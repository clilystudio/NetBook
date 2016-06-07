package com.ushaqi.zhuishushenqi.ui;

import android.content.Context;
import android.content.res.Resources;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public final class aw extends BaseAdapter
{
  private LayoutInflater a;
  private String[] b;

  public aw(BookCategoryListActivity paramBookCategoryListActivity, Context paramContext, String[] paramArrayOfString)
  {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramArrayOfString;
  }

  public final int getCount()
  {
    return this.b.length;
  }

  public final Object getItem(int paramInt)
  {
    return this.b[paramInt];
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    ax localax2;
    if (paramView == null)
    {
      ax localax1 = new ax(this);
      if (paramInt == 0)
      {
        localView = this.a.inflate(2130903176, null);
        localax1.a = ((TextView)localView.findViewById(2131493370));
        localax1.b = ((ImageView)localView.findViewById(2131493371));
        localView.setTag(localax1);
        localax2 = localax1;
      }
    }
    while (true)
    {
      localax2.a.setText(this.b[paramInt]);
      if (!BookCategoryListActivity.f(this.c).equals(this.b[paramInt]))
        break label166;
      localax2.a.setTextColor(this.c.getResources().getColor(2131427485));
      localax2.b.setVisibility(0);
      return localView;
      localView = this.a.inflate(2130903174, null);
      break;
      localax2 = (ax)paramView.getTag();
      localView = paramView;
    }
    label166: localax2.a.setTextColor(am.a(this.c, 16842904));
    localax2.b.setVisibility(8);
    return localView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aw
 * JD-Core Version:    0.6.0
 */