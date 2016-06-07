package com.clilystudio.netbook.util;

import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.concurrent.ConcurrentHashMap;

final class ah
  implements Handler.Callback
{
  public final boolean handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    int i = localBundle.getInt("postCount");
    String str = localBundle.getString("bookId");
    if (ag.a().containsKey(str))
    {
      ((ai)ag.a().remove(str)).a(str, i);
      ag.b().put(str, Integer.valueOf(i));
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.ah
 * JD-Core Version:    0.6.0
 */