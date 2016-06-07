package com.ximalaya.ting.android.player;

import android.os.HandlerThread;
import android.os.Process;

public class PriorityHandlerThread extends HandlerThread
{
  private final int priority;

  public PriorityHandlerThread(String paramString, int paramInt)
  {
    super(paramString);
    this.priority = paramInt;
  }

  public void run()
  {
    Process.setThreadPriority(this.priority);
    super.run();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.PriorityHandlerThread
 * JD-Core Version:    0.6.0
 */