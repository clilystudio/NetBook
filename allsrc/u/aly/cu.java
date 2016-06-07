package u.aly;

import com.umeng.a.a;

public final class cu
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a;
  private cB b;

  public cu()
  {
    if (Thread.getDefaultUncaughtExceptionHandler() == this)
      return;
    this.a = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }

  public final void a(cB paramcB)
  {
    this.b = paramcB;
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (a.g)
      this.b.a(paramThrowable);
    while (true)
    {
      if ((this.a != null) && (this.a != Thread.getDefaultUncaughtExceptionHandler()))
        this.a.uncaughtException(paramThread, paramThrowable);
      return;
      this.b.a(null);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cu
 * JD-Core Version:    0.6.0
 */