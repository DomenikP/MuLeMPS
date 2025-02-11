package jetbrains.mps.make.generator;

/*Generated by MPS */

import jetbrains.mps.make.script.IQuery;
import jetbrains.mps.internal.collections.runtime.Sequence;

public class Askfoo_Query implements IQuery<Bar_Option> {
  private IQuery.Name name = new IQuery.Name("Askfoo");
  private int defaultOption = 0;
  public Askfoo_Query() {
  }
  public IQuery.Name getName() {
    return name;
  }
  public String getTitle() {
    return "Q";
  }
  public String getText() {
    return "Foo?";
  }
  public Iterable<Bar_Option> options() {
    return Sequence.fromIterable(Sequence.fromArray(Bar_Option.class.getEnumConstants())).cut(1);
  }
  public Bar_Option voidOption() {
    return Sequence.fromIterable(Sequence.fromArray(Bar_Option.class.getEnumConstants())).last();
  }
  public Bar_Option defaultOption() {
    return (defaultOption >= 0 ? Bar_Option.class.getEnumConstants()[defaultOption] : null);
  }
}
