package uk.me.lewisdeane.ldialogs;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;

final class f
  implements AdapterView.OnItemClickListener
{
  f(e parame)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      if (e.a(this.a) == null)
        e.a(this.a, (g)e.b(this.a));
      g localg = e.a(this.a);
      e.c(this.a).get(paramInt);
      localg.a(paramInt);
      this.a.dismiss();
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      while (true)
        Log.w("L Dialogs", e.b(this.a).getClass() + " should implement ListClickListener or use CustomListDialog.setListClickListener(...)");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.f
 * JD-Core Version:    0.6.0
 */