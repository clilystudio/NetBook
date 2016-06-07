package android.support.design.widget;

import android.os.Handler.Callback;
import android.os.Message;

final class O
  implements Handler.Callback
{
  public final boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return false;
    case 0:
      ((Snackbar)paramMessage.obj).b();
      return true;
    case 1:
    }
    ((Snackbar)paramMessage.obj).c();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.O
 * JD-Core Version:    0.6.0
 */