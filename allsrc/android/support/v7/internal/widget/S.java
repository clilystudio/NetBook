package android.support.v7.internal.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

final class S
  implements AdapterView.OnItemClickListener
{
  S(R paramR, SpinnerCompat paramSpinnerCompat)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.a.setSelection(paramInt);
    if (this.a.a.l != null)
      this.a.a.a(paramView, paramInt, R.a(this.a).getItemId(paramInt));
    this.a.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.S
 * JD-Core Version:    0.6.0
 */