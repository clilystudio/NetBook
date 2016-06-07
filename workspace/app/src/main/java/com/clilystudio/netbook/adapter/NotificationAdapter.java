package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.viewbinder.notification.NotifBinder;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.clilystudio.netbook.widget.DividerSection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public abstract class NotificationAdapter extends u<NotificationItem>
{
  private long a;
  private final Context b;
  private List<NotificationItem> c = new ArrayList();
  private List<NotificationItem> d = new ArrayList();
  private w e = new w(this);
  private w f = new w(this);
  private w g = new w(this);
  private w h = new w(this);
  private w[] i;

  public NotificationAdapter(LayoutInflater paramLayoutInflater)
  {
    w[] arrayOfw = new w[4];
    arrayOfw[0] = this.e;
    arrayOfw[1] = this.f;
    arrayOfw[2] = this.g;
    arrayOfw[3] = this.h;
    this.i = arrayOfw;
    this.b = paramLayoutInflater.getContext();
    this.a = a.R(a());
  }

  private View a(ViewGroup paramViewGroup, View paramView, String paramString)
  {
    if (paramView == null)
      paramView = LayoutInflater.from(this.b).inflate(2130903291, paramViewGroup, false);
    new NotificationAdapter.HeaderHolder(paramView).mLabelText.setText(paramString);
    return paramView;
  }

  private NotificationItem a(int paramInt1, int paramInt2)
  {
    int j = 1;
    if (paramInt1 == j)
    {
      if (this.c.size() == 0)
        throw new RuntimeException("unread item is 0");
      return (NotificationItem)this.c.get(paramInt2 - 1);
    }
    if (paramInt1 == 3)
    {
      if (this.c.size() == 0);
      while (true)
      {
        return (NotificationItem)this.d.get(paramInt2 - j);
        j = 2 + this.c.size();
      }
    }
    return null;
  }

  public final NotificationItem a(int paramInt)
  {
    int j = getItemViewType(paramInt);
    if ((j == 2) || (j == 0))
      return null;
    return a(j, paramInt);
  }

  protected abstract String a();

  public final void a(List<NotificationItem> paramList)
  {
    this.d.clear();
    this.c.clear();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      NotificationItem localNotificationItem = (NotificationItem)localIterator.next();
      Date localDate = localNotificationItem.getServerDate();
      if (this.a < localDate.getTime())
      {
        this.c.add(localNotificationItem);
        continue;
      }
      this.d.add(localNotificationItem);
    }
    if (this.c.size() != 0)
    {
      this.e.a(0, 0);
      this.f.a(1, 1 + this.c.size());
    }
    for (int j = 0 + (1 + this.c.size()); ; j = 0)
    {
      if (this.d.size() != 0)
      {
        this.g.a(j, j);
        this.h.a(j + 1, j + 1 + this.d.size());
      }
      notifyDataSetChanged();
      return;
    }
  }

  public final Context b()
  {
    return this.b;
  }

  public int getCount()
  {
    w[] arrayOfw = this.i;
    int j = arrayOfw.length;
    int k = 0;
    int m = 0;
    if (k < j)
    {
      w localw = arrayOfw[k];
      if ((localw.b == localw.a) && (localw.b != -1));
      for (int n = 1; ; n = localw.b - localw.a)
      {
        m += n;
        k++;
        break;
      }
    }
    return m;
  }

  public int getItemViewType(int paramInt)
  {
    int j = this.i.length;
    for (int k = 0; k < j; k++)
    {
      w localw = this.i[k];
      int m;
      if (localw.a == localw.b)
        if (paramInt == localw.a)
          m = 1;
      while (m != 0)
      {
        return k;
        m = 0;
        continue;
        if ((paramInt >= localw.a) && (paramInt < localw.b))
        {
          m = 1;
          continue;
        }
        m = 0;
      }
    }
    return 0;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int j = 1;
    int k = getItemViewType(paramInt);
    switch (k)
    {
    default:
      return paramView;
    case 0:
      return a(paramViewGroup, paramView, "未读");
    case 2:
      return a(paramViewGroup, paramView, "已读");
    case 1:
    case 3:
    }
    NotificationItem localNotificationItem = a(k, paramInt);
    if (k == j)
    {
      if (this.c.size() == 0)
        throw new RuntimeException("unread item is 0");
      if (-1 + this.c.size() == paramInt - 1);
      if (paramView != null)
        break label303;
    }
    label266: label303: for (View localView = LayoutInflater.from(this.b).inflate(2130903292, paramViewGroup, false); ; localView = paramView)
    {
      NotificationAdapter.ViewHolder localViewHolder = new NotificationAdapter.ViewHolder(localView);
      NotifBinder localNotifBinder = NotifBinderFactory.create(localNotificationItem);
      localViewHolder.mMainText.setText(localNotifBinder.getMainText());
      if ("follow".equals(localNotificationItem.getType()))
        localViewHolder.mSubText.setVisibility(4);
      while (true)
      {
        localNotifBinder.fillImageView(localViewHolder.mAvatar);
        ((DividerSection)localView).setDividerMatchParent();
        return localView;
        if (k != 3)
          break;
        if (this.c.size() == 0);
        while (true)
        {
          if (-1 + this.d.size() != paramInt - j)
            break label266;
          break;
          j = 2 + this.c.size();
        }
        break;
        localViewHolder.mSubText.setVisibility(0);
        localViewHolder.mSubText.setText(localNotifBinder.getSubText());
        localNotifBinder.fillIcon(localViewHolder.mSubText);
      }
    }
  }

  public int getViewTypeCount()
  {
    return this.i.length;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.NotificationAdapter
 * JD-Core Version:    0.6.0
 */