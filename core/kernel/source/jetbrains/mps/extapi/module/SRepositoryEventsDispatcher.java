/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.extapi.module;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryAttachListener;
import org.jetbrains.mps.openapi.module.SRepositoryListener;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * This class dispatches repository events to SRepositoryListener clients
 */
public class SRepositoryEventsDispatcher {
  private static final Logger LOG = LogManager.getLogger(SRepositoryEventsDispatcher.class);

  private final List<SRepositoryListener> myListeners = new CopyOnWriteArrayList<SRepositoryListener>();

  private final SRepository myRepository;

  public SRepositoryEventsDispatcher(@NotNull SRepository repository) {
    myRepository = repository;
  }

  public final void addRepositoryListener(SRepositoryListener listener) {
    myListeners.add(listener);
    if (listener instanceof SRepositoryAttachListener) {
      myRepository.getModelAccess().checkReadAccess();
      ((SRepositoryAttachListener) listener).startListening(myRepository);
    }
  }

  public final void removeRepositoryListener(SRepositoryListener listener) {
    if (listener instanceof SRepositoryAttachListener) {
      myRepository.getModelAccess().checkReadAccess();
      ((SRepositoryAttachListener) listener).stopListening(myRepository);
    }
    myListeners.remove(listener);
  }

  public final void fireModuleAdded(@NotNull SModule module) {
    myRepository.getModelAccess().checkWriteAccess();
    for (SRepositoryListener listener : myListeners) {
      listener.moduleAdded(module);
    }
  }

  // TODO : there is a need to introduce some kind of priority for SRepositoryListener.
  // For example, class loading system wants to be the first to know everything about modules' addition/removal (important to handle an event before a potential client)
  // As for now, just notifying
  public final void fireBeforeModuleRemoved(@NotNull SModule module) {
    myRepository.getModelAccess().checkWriteAccess();
    for (SRepositoryListener listener : myListeners) {
      listener.beforeModuleRemoved(module);
    }
  }

  public final void fireModuleRemoved(@NotNull SModuleReference module) {
    myRepository.getModelAccess().checkWriteAccess();
    for (SRepositoryListener listener : myListeners) {
      listener.moduleRemoved(module);
    }
  }

  public final void fireCommandStarted() {
    myRepository.getModelAccess().checkWriteAccess();
    for (SRepositoryListener listener : myListeners) {
      listener.commandStarted(myRepository);
    }
  }

  public final void fireCommandFinished() {
    myRepository.getModelAccess().checkWriteAccess();
    for (SRepositoryListener listener : myListeners) {
      listener.commandFinished(myRepository);
    }
  }
}
