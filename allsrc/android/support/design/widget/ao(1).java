package android.support.design.widget;

import android.os.Handler.Callback;
import android.os.Message;

final class ao
  implements Handler.Callback
{
  ao(TextInputLayout paramTextInputLayout)
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
    TextInputLayout.a(this.a, true);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ao
 * JD-Core Version:    0.6.0
 */