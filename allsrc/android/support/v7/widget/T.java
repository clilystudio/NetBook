package android.support.v7.widget;

import android.database.DataSetObserver;

final class T extends DataSetObserver
{
  private T(L paramL)
  {
  }

  public final void onChanged()
  {
    if (this.a.b())
      this.a.c();
  }

  public final void onInvalidated()
  {
    this.a.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.T
 * JD-Core Version:    0.6.0
 */