package com.clilystudio.app.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.List;

final class K
  implements AdapterView.OnItemClickListener
{
  K(PayChargeActivity paramPayChargeActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt >= 0)
      PayChargeActivity.a(this.a).size();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.K
 * JD-Core Version:    0.6.2
 */