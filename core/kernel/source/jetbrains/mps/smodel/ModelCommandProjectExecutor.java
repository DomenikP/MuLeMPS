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
package jetbrains.mps.smodel;

import jetbrains.mps.project.Project;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/**
 * Extracted part of ModelCommandExecutor for purposes of code migration from kernel into neatly structured modules
 * @deprecated Methods in this interface are deprecated and are scheduled for removal. Use {@link org.jetbrains.mps.openapi.module.ModelAccess} methods
 * instead to run project-aware commands. There are handy {@link jetbrains.mps.project.Project#getModelAccess()} 
 * and <code>jetbrains.mps.ide.project.ProjectHelper</code>if you got MPS or IDEA project.
 *
 * @author Artem Tikhomirov
 */
@ToRemove(version = 3.2)
@Deprecated
public interface ModelCommandProjectExecutor extends ModelCommandExecutor {

  @ToRemove(version = 3.2)
  @Deprecated
  void runCommandInEDT(@NotNull Runnable r, @NotNull Project p);

  /**
   * Is equivalent to {@link #runWriteActionInCommand(Runnable, jetbrains.mps.project.Project)}
   */
  @ToRemove(version = 3.2)
  @Deprecated
  void executeCommand(Runnable r, Project project);

  @ToRemove(version = 3.2)
  @Deprecated
  <T> T runWriteActionInCommand(Computable<T> c, Project project);

  @ToRemove(version = 3.2)
  @Deprecated
  <T> T runWriteActionInCommand(Computable<T> c, @Nullable String name, @Nullable Object groupId, boolean requestUndoConfirmation, Project project);

  /**
   * Is equivalent to {@link #executeCommand(java.lang.Runnable, jetbrains.mps.project.Project)}
   */
  @ToRemove(version = 3.2)
  @Deprecated
  void runWriteActionInCommand(Runnable r, Project project);

  @ToRemove(version = 3.2)
  @Deprecated
  void runWriteActionInCommand(Runnable r, @Nullable String name, @Nullable Object groupId, boolean requestUndoConfirmation, Project project);

  @ToRemove(version = 3.2)
  @Deprecated
  void runUndoTransparentCommand(Runnable r, Project project);


  @ToRemove(version = 3.2)
  @Deprecated
  boolean tryWriteInCommand(Runnable r, Project p);

  @ToRemove(version = 3.2)
  @Deprecated
  <T> T tryWriteInCommand(Computable<T> r, Project p);
}
