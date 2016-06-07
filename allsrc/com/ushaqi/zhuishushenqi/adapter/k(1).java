package com.ushaqi.zhuishushenqi.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.TopicPost;
import com.ushaqi.zhuishushenqi.util.e;

final class k
  implements View.OnClickListener
{
  k(j paramj, TopicPost paramTopicPost)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.k
 * JD-Core Version:    0.6.0
 */