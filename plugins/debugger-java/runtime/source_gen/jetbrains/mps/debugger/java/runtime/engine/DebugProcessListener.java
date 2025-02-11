package jetbrains.mps.debugger.java.runtime.engine;

/*Generated by MPS */

import org.jetbrains.annotations.NotNull;
import jetbrains.mps.debugger.java.runtime.engine.events.Context;
import jetbrains.mps.debugger.java.runtime.engine.events.EventsProcessor;

public interface DebugProcessListener {
  public void connectorIsReady();
  public void paused(@NotNull Context suspendContext);
  public void resumed(@NotNull Context suspendContext);
  public void processDetached(@NotNull EventsProcessor process, boolean closedByUser);
  public void processAttached(@NotNull EventsProcessor process);
}
