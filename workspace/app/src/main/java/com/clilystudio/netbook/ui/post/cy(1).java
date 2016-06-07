package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

final class cy
  implements View.OnClickListener
{
  cy(ReviewActivity paramReviewActivity, TextView paramTextView)
  {
  }

  public final void onClick(View paramView)
  {
    ReviewActivity.d(this.b).findViewById(2131493085).setVisibility(0);
    this.a.setText("加载中...");
    ReviewActivity.b(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.cy
 * JD-Core Version:    0.6.0
 */