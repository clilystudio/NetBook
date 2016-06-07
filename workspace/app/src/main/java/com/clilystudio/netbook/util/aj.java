package com.clilystudio.netbook.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostCountRoot;

final class aj extends HandlerThread
  implements Handler.Callback
{
  public aj(String paramString)
  {
    super(paramString);
  }

  public final boolean handleMessage(Message paramMessage)
  {
    String str = paramMessage.getData().getString("bookId");
    try
    {
      PostCountRoot localPostCountRoot = ag.c().c(str);
      Message localMessage = Message.obtain(ag.d());
      Bundle localBundle = new Bundle();
      localBundle.putInt("postCount", localPostCountRoot.getPostCount());
      localBundle.putString("bookId", str);
      localMessage.setData(localBundle);
      ag.d().sendMessage(localMessage);
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.aj
 * JD-Core Version:    0.6.0
 */