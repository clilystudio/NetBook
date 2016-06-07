package com.ushaqi.zhuishushenqi.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.DiscussSummary;
import com.ushaqi.zhuishushenqi.util.e;

final class m
  implements View.OnClickListener
{
  m(l paraml, DiscussSummary paramDiscussSummary)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.m
 * JD-Core Version:    0.6.0
 */