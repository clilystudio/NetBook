package com.clilystudio.app.netbook.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.model.BookReview;
import com.clilystudio.app.netbook.util.W;
import com.clilystudio.app.netbook.util.am_CommonUtils;

public final class h extends W<BookReview>
{
  private boolean a;
  private boolean b = false;

  public h(LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater, 2130903269);
    Context localContext = paramLayoutInflater.getContext();
    this.a = am_CommonUtils.m(localContext);
    this.b = a.r(localContext, "community_user_gender_icon_toggle");
  }

  protected final int[] a()
  {
    return new int[] { 2131492899, 2131493630, 2131493631, 2131492935, 2131493632, 2131492936, 2131492905, 2131493634, 2131493629, 2131493633 };
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.h
 * JD-Core Version:    0.6.2
 */