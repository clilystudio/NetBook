package android.support.v7.internal.widget;

import android.database.DataSetObserver;

final class r extends DataSetObserver
{
  r(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void onChanged()
  {
    super.onChanged();
    ActivityChooserView.a(this.a).notifyDataSetChanged();
  }

  public final void onInvalidated()
  {
    super.onInvalidated();
    ActivityChooserView.a(this.a).notifyDataSetInvalidated();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.r
 * JD-Core Version:    0.6.0
 */