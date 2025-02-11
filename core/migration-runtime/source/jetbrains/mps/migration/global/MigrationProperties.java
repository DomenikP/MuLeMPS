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
package jetbrains.mps.migration.global;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Map;
import java.util.TreeMap;

public class MigrationProperties {
  protected Map<String, String> myProperties = new TreeMap<String, String>();

  public void setProperty(@NotNull String key, String value) {
    if (value == null) {
      myProperties.remove(key);
      return;
    }

    myProperties.put(key, value);
  }

  @Nullable
  public String getProperty(String key) {
    return myProperties.get(key);
  }
}
