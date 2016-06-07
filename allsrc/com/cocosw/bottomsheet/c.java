package com.cocosw.bottomsheet;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

final class c extends BaseAdapter
{
  c(a parama)
  {
  }

  private h a(int paramInt)
  {
    return (h)a.b(this.a).get(paramInt);
  }

  public final boolean areAllItemsEnabled()
  {
    return false;
  }

  public final int getCount()
  {
    return a.b(this.a).size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    if (a(paramInt).a)
      return 1;
    return 0;
  }

  @SuppressLint({"InflateParams"})
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (getItemViewType(paramInt) == 0)
    {
      LayoutInflater localLayoutInflater;
      View localView;
      d locald1;
      if (paramView == null)
      {
        localLayoutInflater = (LayoutInflater)this.a.getContext().getSystemService("layout_inflater");
        if (g.a(a.c(this.a)))
        {
          localView = localLayoutInflater.inflate(R.layout.bs_grid_entry, null);
          d locald2 = new d(this);
          d.a(locald2, (TextView)localView.findViewById(R.id.bs_list_title));
          d.a(locald2, (ImageView)localView.findViewById(R.id.bs_list_image));
          localView.setTag(locald2);
          locald1 = locald2;
        }
      }
      h localh;
      while (true)
      {
        localh = a(paramInt);
        d.a(locald1).setText(h.b(localh));
        if (h.a(localh) != null)
          break label178;
        d.b(locald1).setVisibility(8);
        return localView;
        localView = localLayoutInflater.inflate(R.layout.bs_list_entry, null);
        break;
        locald1 = (d)paramView.getTag();
        localView = paramView;
      }
      label178: d.b(locald1).setVisibility(0);
      d.b(locald1).setImageDrawable(h.a(localh));
      return localView;
    }
    if (paramView == null)
    {
      paramView = ((LayoutInflater)this.a.getContext().getSystemService("layout_inflater")).inflate(R.layout.bs_list_divider, null);
      paramView.setVisibility(0);
    }
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  public final boolean isEnabled(int paramInt)
  {
    return getItemViewType(paramInt) == 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.cocosw.bottomsheet.c
 * JD-Core Version:    0.6.0
 */