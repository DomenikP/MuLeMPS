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
package jetbrains.mps.smodel.persistence.def.v8;

import jetbrains.mps.persistence.IndexAwareModelFactory.Callback;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.persistence.def.WriteHelper;
import jetbrains.mps.smodel.persistence.def.v9.Indexer9;
import jetbrains.mps.util.JDOMUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.util.Consumer;

public class PersistenceUtil {
  public static void index(char[] data, Callback consumer) {
    int len = data.length;
    int wordStart = -1;
    for (int i = 0; i < len; i++) {
      char c = data[i];
      if (c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z') {
        if (wordStart == -1) {
          wordStart = i;
        }
      } else if (wordStart >= 0) {
        processWord(data, len, wordStart, i - wordStart, consumer);
        wordStart = -1;
      }
    }
  }

  private static final String TARGET_NODE_ID_PREFIX = "targetNodeId=\"";
  private static final String TYPE_PREFIX = "typeId=\"";
  private static final String MODEL_UID_PREFIX = "modelUID=\"";

  private static void processWord(char[] chars, int charsLength, int offset, int len, Callback consumer) {
    if (chars[offset + len] != '=' || chars[offset] != 't' && chars[offset] != 'm') {
      return;
      // optimization: ignore
    }
    if (contains(chars, charsLength, offset, TARGET_NODE_ID_PREFIX)) {
      // check pattern "targetNodeId=\"(?:[0-9]+v?\\.)?(.+?)\""
      offset += TARGET_NODE_ID_PREFIX.length();
      int end = indexOfClosingQuote(chars, charsLength, offset);
      if (end > offset) {
        int e = offset;
        while (e < end && chars[e] != '.') {
          e++;
        }
        if (e > offset && e + 1 < end && chars[e] == '.') {
          offset = e + 1;
        }
        String nodeId = WriteHelper.decode(JDOMUtil.unescapeText(new String(chars, offset, end - offset)));
        SNodeId id = SNodeId.fromString(nodeId);
        if (id != null) {
          consumer.externalNodeRef(id);
        }
      }
    } else if (contains(chars, charsLength, offset, TYPE_PREFIX)) {
      // check pattern "typeId=\"[a-zA-Z]+\\.[0-9]+\""
      offset += TYPE_PREFIX.length();
      int end = indexOfClosingQuote(chars, charsLength, offset);
      int start = end;
      while (start >= offset && chars[start] != '.') {
        --start;
      }
      offset = start + 1;
      if (end > offset) {
        String cid = JDOMUtil.unescapeText(new String(chars, offset, end - offset));
        //TODO: instances indexing here is an ad-hoc solution that will work for now as it worked before, but should be removed later
        try {
          consumer.instances(MetaIdFactory.conceptId(0, 0, Long.parseLong(cid)));
        } catch (NumberFormatException e) {
          //don't index
        }
      }
    } else if (contains(chars, charsLength, offset, MODEL_UID_PREFIX)) {
      // check pattern "modelUID=\"(.+?)\""
      offset += MODEL_UID_PREFIX.length();
      int end = indexOfClosingQuote(chars, charsLength, offset);
      if (end > offset) {
        String modelRef = JDOMUtil.unescapeText(new String(chars, offset, end - offset));
        try {
          consumer.imports(PersistenceFacade.getInstance().createModelReference(modelRef));
        } catch (IllegalArgumentException e) {
          //don't index
        }
      }
    }
  }

  private static int indexOfClosingQuote(char[] chars, int charsLength, int start) {
    for (int i = start; i < charsLength && chars[i] != '\n'; i++) {
      if (chars[i] == '\"') {
        return i;
      }
    }
    return -1;
  }

  private static boolean contains(char[] chars, int charsLength, int offset, String s) {
    if (offset + s.length() >= charsLength) {
      return false;
    }
    for (int i = 0; i < s.length(); i++) {
      if (chars[offset + i] != s.charAt(i)) {
        return false;
      }
    }
    return true;
  }
}
