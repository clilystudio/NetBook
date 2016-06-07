package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.clilystudio.netbook.model.PayConsumeRecord.Order;
import com.clilystudio.netbook.widget.ScrollLoadListView;

final class T
  implements View.OnClickListener
{
  T(S paramS, int paramInt, PayConsumeRecord.Order paramOrder, ImageView paramImageView, View paramView)
  {
  }

  public final void onClick(View paramView)
  {
    int i = this.a;
    int j = PayConsumeActivity.a(this.e.a).getLastVisiblePosition() - PayConsumeActivity.a(this.e.a).getFooterViewsCount();
    int k = 0;
    if (i >= j)
    {
      PayConsumeActivity.a(this.e.a).smoothScrollToPosition(2 + this.a);
      k = 200;
    }
    new Handler().postDelayed(new U(this), k);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.T
 * JD-Core Version:    0.6.0
 */