package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;

final class m extends Thread
{
  m(LocalChapterListActivity paramLocalChapterListActivity, Handler paramHandler)
  {
  }

  public final void run()
  {
    Message localMessage = new Message();
    try
    {
      ArrayList localArrayList = LocalChapterListActivity.i(this.b);
      localMessage.what = 1;
      localMessage.obj = localArrayList;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localMessage.what = -1;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.m
 * JD-Core Version:    0.6.0
 */