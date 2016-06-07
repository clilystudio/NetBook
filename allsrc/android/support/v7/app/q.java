package android.support.v7.app;

import android.content.Context;
import android.view.Window;
import android.view.Window.Callback;

final class q extends p
{
  private boolean n = true;

  q(Context paramContext, Window paramWindow, l paraml)
  {
    super(paramContext, paramWindow, paraml);
  }

  final Window.Callback a(Window.Callback paramCallback)
  {
    return new r(this, paramCallback);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.q
 * JD-Core Version:    0.6.0
 */