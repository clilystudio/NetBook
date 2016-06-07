package com.mob.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler.Callback;
import android.os.Message;

final class b
  implements Handler.Callback
{
  b(a parama)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    Object[] arrayOfObject = (Object[])paramMessage.obj;
    Context localContext = (Context)arrayOfObject[0];
    Intent localIntent = (Intent)arrayOfObject[1];
    if (!(localContext instanceof Activity))
      localIntent.addFlags(268435456);
    localContext.startActivity(localIntent);
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b
 * JD-Core Version:    0.6.0
 */