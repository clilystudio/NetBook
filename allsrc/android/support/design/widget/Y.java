package android.support.design.widget;

import android.os.Handler.Callback;
import android.os.Message;

final class Y
  implements Handler.Callback
{
  Y(X paramX)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return false;
    case 0:
    }
    X.a(this.a, (Z)paramMessage.obj);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.Y
 * JD-Core Version:    0.6.0
 */