package android.support.v7.app;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class g
  implements AdapterView.OnItemClickListener
{
  g(f paramf, d paramd)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.o.onClick(d.g(this.a), paramInt);
    if (!this.b.p)
      d.g(this.a).dismiss();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.g
 * JD-Core Version:    0.6.0
 */