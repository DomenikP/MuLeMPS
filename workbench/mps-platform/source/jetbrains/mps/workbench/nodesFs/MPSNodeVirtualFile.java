/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.workbench.nodesFs;

import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileSystem;
import com.intellij.util.LocalTimeCounter;
import jetbrains.mps.extapi.module.TransientSModule;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.Computable;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class MPSNodeVirtualFile extends VirtualFile {
  private static final byte[] CONTENTS = new byte[0];
  private static final Logger LOG = LogManager.getLogger(MPSNodeVirtualFile.class);
  public static final String NODE_PREFIX = "node://";

  private SNodeReference myNode;
  private final MPSNodesVirtualFileSystem myFileSystem;
  private String myPath;
  private String myName;
  private String myPresentationName;
  private long myModificationStamp = LocalTimeCounter.currentTime();
  private long myTimeStamp = -1;

  MPSNodeVirtualFile(@NotNull SNodeReference nodePointer, @NotNull MPSNodesVirtualFileSystem vfs) {
    myNode = nodePointer;
    myFileSystem = vfs;
    updateFields();
  }

  void updateFields() {
    myFileSystem.getRepository().getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        SNode node = myNode.resolve(myFileSystem.getRepository());
        if (node == null) {
          LOG.error(new Throwable("Cannot find node for passed SNodeReference: " + myNode.toString()));
          myName = myPresentationName = "";
          myPath = "";
        } else {
          myName = myPresentationName = String.valueOf(node.getPresentation());
          if (node.getModel() != null && node.getModel().getModule() instanceof TransientSModule) {
            // it's common to open same node from different generation steps (transient models)
            // and to tell nodes from different steps we append model's identification
            final String s = SModelStereotype.getStereotype(node.getModel());
            if (!s.isEmpty()) {
              myPresentationName = myName + '@' + s;
            }
          }
          myPath = NODE_PREFIX + NiceReferenceSerializer.serializeNode(node);
          myTimeStamp = node.getModel().getSource().getTimestamp();
        }
      }
    });
  }

  public SNode getNode() {
    return myNode.resolve(myFileSystem.getRepository());
  }

  public SNodeReference getSNodePointer() {
    return myNode;
  }

  @NotNull
  @Override
  public String getPath() {
    return myPath;
  }

  @Override
  @NotNull
  public VirtualFileSystem getFileSystem() {
    return myFileSystem;
  }

  @Override
  @NotNull
  @NonNls
  public String getName() {
    return myName;
  }

  @Override
  public String getPresentableName() {
    return myPresentationName;
  }

  @Override
  public boolean isDirectory() {
    return false;
  }

  @Override
  public long getLength() {
    return 0;
  }

  @Override
  public InputStream getInputStream() throws IOException {
    throw new UnsupportedOperationException();
  }

  @Override
  @NotNull
  public OutputStream getOutputStream(Object requestor, long newModificationStamp, long newTimeStamp) throws IOException {
    throw new UnsupportedOperationException();
  }

  @Override
  @NotNull
  public byte[] contentsToByteArray() throws IOException {
    return CONTENTS;
  }

  @Override
  @Nullable
  public VirtualFile getParent() {
    // Returning the parent of this node's model virtual file
    // i.e. a real directory wherein the model file lives
    // Needed for idea scope to work (see PsiSearchScopeUtil.isInScope)
    // but why it's not MPSModelVirtualFile that serves as parent for node VF?
    if (myNode == null || myNode.getModelReference() == null) return null;
    return new ModelAccessHelper(myFileSystem.getRepository()).runReadAction(new Computable<VirtualFile>() {
      @Override
      public VirtualFile compute() {
        org.jetbrains.mps.openapi.model.SModelReference modelRef = myNode.getModelReference();
        if (modelRef.resolve(myFileSystem.getRepository()) == null) {
          return null;
        }
        MPSModelVirtualFile modelVFile = myFileSystem.getFileFor(modelRef);
        if (modelVFile != null) {
          return modelVFile.getParent();
        }
        return null;
      }
    });
  }

  @Override
  public VirtualFile[] getChildren() {
    return null;
  }

  @Override
  public void refresh(boolean asynchronous, boolean recursive, Runnable postRunnable) {
    if (postRunnable != null) {
      postRunnable.run();
    }
  }

  @Override
  public boolean isWritable() {
    return true;
  }

  @Override
  public boolean isValid() {
    return myNode != null;
  }

  void invalidate() {
    myNode = null;
  }

  public boolean hasValidMPSNode() {
    return isValid() && myFileSystem.hasVirtualFileFor(myNode);
  }

  @Override
  public long getTimeStamp() {
    return myTimeStamp;
  }

  public void setTimeStamp(long newTimeStamp) {
    myTimeStamp = newTimeStamp;
  }

  @Override
  public long getModificationStamp() {
    return myModificationStamp;
  }

  public void setModificationStamp(long newValue) {
    myModificationStamp = newValue;
  }
}
