package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ushaqi.zhuishushenqi.model.BookSummary;
import com.ushaqi.zhuishushenqi.util.W;

final class Q extends W<BookSummary>
{
  public Q(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, LayoutInflater paramLayoutInflater, int paramInt)
  {
    super(paramLayoutInflater, 2130903316);
  }

  protected final int[] a()
  {
    return new int[] { 2131492899, 2131492936, 2131493317, 2131493775, 2131493776, 2131493777, 2131493780, 2131493778, 2131493779, 2131493411 };
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    localView.findViewById(2131493781).setOnClickListener(new R(this, paramInt));
    localView.findViewById(2131493778).setOnClickListener(new S(this, paramInt));
    localView.findViewById(2131493782).setOnClickListener(new T(this, paramInt));
    a(paramInt, localView, getItem(paramInt));
    return localView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.Q
 * JD-Core Version:    0.6.0
 */