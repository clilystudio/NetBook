package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

final class bn
  implements View.OnClickListener
{
  bn(GirlTopicActivity paramGirlTopicActivity, TextView paramTextView)
  {
  }

  public final void onClick(View paramView)
  {
    GirlTopicActivity.e(this.b).findViewById(2131493085).setVisibility(0);
    this.a.setText("加载中...");
    GirlTopicActivity.b(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bn
 * JD-Core Version:    0.6.0
 */