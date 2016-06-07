package android.support.v7.app;

import android.support.v7.internal.view.d;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;

final class r extends o
{
  r(q paramq, Window.Callback paramCallback)
  {
    super(paramq, paramCallback);
  }

  public final ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    if (q.a(this.a))
    {
      d locald = new d(this.a.a, paramCallback);
      q localq = this.a;
      if (localq.j != null)
        localq.j.c();
      x localx = new x(localq, locald);
      a locala = localq.a();
      if (locala != null)
        localq.j = locala.a(localx);
      if (localq.j == null)
        localq.j = localq.a(localx);
      android.support.v7.b.a locala1 = localq.j;
      if (locala1 != null)
        return locald.b(locala1);
      return null;
    }
    return super.onWindowStartingActionMode(paramCallback);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.r
 * JD-Core Version:    0.6.0
 */