/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps;

import com.intellij.openapi.extensions.AbstractExtensionPointBean;
import com.intellij.openapi.extensions.ExtensionPointName;
import com.intellij.openapi.extensions.PluginDescriptor;
import com.intellij.util.xmlb.annotations.Attribute;

public class LanguageLibrary extends AbstractExtensionPointBean {
  public static final ExtensionPointName<LanguageLibrary> EP_LANGUAGE_LIBS = ExtensionPointName.create("com.intellij.mps.LanguageLibrary");

  @Attribute("dir")
  public String dir;

  @Override
  public PluginDescriptor getPluginDescriptor() {
    return myPluginDescriptor;
  }
}
