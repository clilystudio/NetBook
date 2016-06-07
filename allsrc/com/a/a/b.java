package com.a.a;

import android.os.Handler.Callback;
import android.os.Message;

final class b
  implements Handler.Callback
{
  b(c paramc)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    o localo = (o)paramMessage.obj;
    this.a.a(localo.b);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.b
 * JD-Core Version:    0.6.0
 */