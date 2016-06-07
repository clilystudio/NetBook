package com.ushaqi.zhuishushenqi.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.GirlTopicSummary;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.util.e;

final class p
  implements View.OnClickListener
{
  p(o paramo, SmartImageView paramSmartImageView, GirlTopicSummary paramGirlTopicSummary)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getContext().startActivity(e.a(this.a.getContext(), this.b.getAuthor()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.p
 * JD-Core Version:    0.6.0
 */