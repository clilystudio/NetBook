package android.support.v7.internal.widget;

import android.database.DataSetObserver;

final class u extends DataSetObserver
{
  u(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void onChanged()
  {
    super.onChanged();
    ActivityChooserView.c(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.u
 * JD-Core Version:    0.6.0
 */