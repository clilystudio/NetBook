package com.clilystudio.app.netbook.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.model.DiscussSummary;
import com.clilystudio.app.netbook.util.W;
import com.clilystudio.app.netbook.util.am_CommonUtils;

public final class l extends W<DiscussSummary>
{
  private boolean a;
  private boolean b = false;

  public l(LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater, 2130903295);
    Context localContext = paramLayoutInflater.getContext();
    this.a = am_CommonUtils.m(localContext);
    this.b = a.r(localContext, "community_user_gender_icon_toggle");
  }

  protected final int[] a()
  {
    return new int[] { 2131492899, 2131493630, 2131493631, 2131492935, 2131492936, 2131493519, 2131493727, 2131493629, 2131493632 };
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.l
 * JD-Core Version:    0.6.2
 */