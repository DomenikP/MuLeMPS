package jetbrains.mps.console.internalCommands.runtime.util;

/*Generated by MPS */

import jetbrains.mps.InternalFlag;

public class InternalUtil {

  public static boolean getInternalFlag() {
    return InternalFlag.isInternalMode();
  }

  public static boolean setInternalFlag(boolean flag) {
    InternalFlag.getInstance().setInternalFlag(flag);
    return getInternalFlag();
  }


}
