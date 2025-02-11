package jetbrains.mps.baseLanguage.javadoc.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNode;

public class HTMLElement_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    if (ListSequence.fromList(SLinkOperations.getChildren(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5bc4aa08e154b399L, 0x5bc4aa08e154b39bL, "line"))).isEmpty()) {
      tgs.append("<");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), MetaAdapterFactory.getProperty(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5bc4aa08e154b399L, 0x5bc4aa08e154b39aL, "name")));
      tgs.append(" />");
    } else {
      tgs.append("<");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), MetaAdapterFactory.getProperty(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5bc4aa08e154b399L, 0x5bc4aa08e154b39aL, "name")));
      tgs.append(">");
      for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5bc4aa08e154b399L, 0x5bc4aa08e154b39bL, "line"))) {
        tgs.appendNode(item);
      }
      tgs.append("</");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), MetaAdapterFactory.getProperty(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5bc4aa08e154b399L, 0x5bc4aa08e154b39aL, "name")));
      tgs.append(">");
    }
  }
}
