package com.ushaqi.zhuishushenqi.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.model.BookHelpSummary;
import com.ushaqi.zhuishushenqi.util.W;

public final class d extends W<BookHelpSummary>
{
  private boolean a;
  private boolean b = false;

  public d(LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater, 2130903295);
    Context localContext = paramLayoutInflater.getContext();
    this.a = am.m(localContext);
    this.b = a.r(localContext, "community_user_gender_icon_toggle");
  }

  protected final int[] a()
  {
    return new int[] { 2131492899, 2131493630, 2131493631, 2131492935, 2131492936, 2131493519, 2131493629, 2131493632 };
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.d
 * JD-Core Version:    0.6.0
 */