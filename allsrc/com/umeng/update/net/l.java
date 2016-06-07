package com.umeng.update.net;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import u.a.b;

final class l extends Handler
{
  l(i parami)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    try
    {
      b.c(i.b(), "DownloadAgent.handleMessage(" + paramMessage.what + "): ");
      switch (paramMessage.what)
      {
      case 4:
      default:
        super.handleMessage(paramMessage);
        return;
      case 1:
        if (i.k(this.a) == null)
          return;
        i.k(this.a).d();
        return;
      case 3:
      case 5:
      case 2:
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      b.c(i.b(), "DownloadAgent.handleMessage(" + paramMessage.what + "): " + localException.getMessage());
      return;
    }
    if (i.k(this.a) != null)
    {
      i.k(this.a);
      return;
      i.l(this.a).unbindService(i.m(this.a));
      if (i.k(this.a) != null)
      {
        if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3) || (paramMessage.arg1 == 5))
        {
          u localu = i.k(this.a);
          int i = paramMessage.arg1;
          localu.a(i, paramMessage.getData().getString("filename"));
          return;
        }
        i.k(this.a).a(0, null);
        b.c(i.b(), "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): ");
        return;
        i.k(this.a).a(paramMessage.arg1);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.l
 * JD-Core Version:    0.6.0
 */