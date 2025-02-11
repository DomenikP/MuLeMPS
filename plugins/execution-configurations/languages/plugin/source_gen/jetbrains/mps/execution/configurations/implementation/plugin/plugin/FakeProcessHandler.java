package jetbrains.mps.execution.configurations.implementation.plugin.plugin;

/*Generated by MPS */

import com.intellij.execution.process.BaseOSProcessHandler;
import java.util.concurrent.Future;
import jetbrains.mps.baseLanguage.unitTest.execution.server.TestLightExecutor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import java.io.OutputStream;

public class FakeProcessHandler extends BaseOSProcessHandler {
  private final Future<?> myFuture;
  private final TestLightExecutor myExecutor;

  public FakeProcessHandler(@NotNull FakeProcess fakeProcess, Future<?> future, TestLightExecutor executor) {
    super(fakeProcess, null, null);
    myFuture = future;
    myExecutor = executor;
  }

  @Override
  public void startNotify() {
    super.startNotify();
    myExecutor.setReady();
  }

  private void terminate() {
    myExecutor.terminateRun();
  }

  @Override
  protected void destroyProcessImpl() {
    terminate();
  }

  @Override
  protected void detachProcessImpl() {
    terminate();
  }

  @Override
  public boolean isProcessTerminated() {
    return myFuture.isDone();
  }

  @Override
  public boolean detachIsDefault() {
    return false;
  }

  @Nullable
  public OutputStream getProcessInput() {
    return null;
  }
}
