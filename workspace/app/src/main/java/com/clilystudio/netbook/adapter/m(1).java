package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.util.e;

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
 * Qualified Name:     com.clilystudio.netbook.adapter.m
 * JD-Core Version:    0.6.0
 */