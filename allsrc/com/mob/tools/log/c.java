package com.mob.tools.log;

import android.util.Log;
import com.mob.tools.e;

public final class c
  implements Thread.UncaughtExceptionHandler
{
  private static boolean a = true;
  private static Thread.UncaughtExceptionHandler b;

  public static void a()
  {
    b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(new c());
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (a)
      Log.wtf("MobUncaughtExceptionHandler", paramThrowable);
    e.a().crash(paramThrowable);
    if (b != null)
      b.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.log.c
 * JD-Core Version:    0.6.0
 */