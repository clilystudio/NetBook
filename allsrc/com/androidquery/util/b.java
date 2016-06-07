package com.androidquery.util;

import android.app.Activity;
import android.app.Dialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import java.io.File;
import java.util.Comparator;

public final class b
  implements TextWatcher, View.OnClickListener, View.OnLongClickListener, AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener, Runnable, Comparator<File>
{
  private Object[] a;
  private int b;
  private int c = 0;
  private int d;
  private boolean e = false;

  private Object a(Object[] paramArrayOfObject)
  {
    if (this.b != 0)
      switch (this.b)
      {
      default:
      case 2:
      case 1:
      }
    while (true)
    {
      return null;
      a.a((File)this.a[0], ((Long)this.a[1]).longValue(), ((Long)this.a[2]).longValue());
      continue;
      a.a((File)this.a[0], (byte[])this.a[1]);
    }
  }

  private void a(AbsListView paramAbsListView, int paramInt)
  {
    int i = paramAbsListView.getCount();
    int j = paramAbsListView.getLastVisiblePosition();
    if ((paramInt == 0) && (i == j + 1))
    {
      if (j != this.d)
      {
        this.d = j;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramAbsListView;
        arrayOfObject[1] = Integer.valueOf(paramInt);
        a(arrayOfObject);
      }
      return;
    }
    this.d = -1;
  }

  public static void a(Object paramObject, String paramString, boolean paramBoolean)
  {
    View localView;
    if (paramObject != null)
    {
      if (!(paramObject instanceof View))
        break label119;
      localView = (View)paramObject;
      if (!(paramObject instanceof ProgressBar))
        break label200;
    }
    label200: for (ProgressBar localProgressBar = (ProgressBar)paramObject; ; localProgressBar = null)
    {
      if (paramBoolean)
      {
        localView.setTag(1090453505, paramString);
        localView.setVisibility(0);
        if (localProgressBar != null)
        {
          localProgressBar.setProgress(0);
          localProgressBar.setMax(100);
        }
      }
      label119: Activity localActivity;
      do
      {
        do
        {
          do
          {
            Object localObject;
            do
            {
              return;
              localObject = localView.getTag(1090453505);
            }
            while ((localObject != null) && (!localObject.equals(paramString)));
            localView.setTag(1090453505, null);
          }
          while ((localProgressBar != null) && (!localProgressBar.isIndeterminate()));
          localView.setVisibility(8);
          return;
          if (!(paramObject instanceof Dialog))
            continue;
          Dialog localDialog = (Dialog)paramObject;
          com.androidquery.a locala = new com.androidquery.a(localDialog.getContext());
          if (paramBoolean)
          {
            locala.a(localDialog);
            return;
          }
          locala.b(localDialog);
          return;
        }
        while (!(paramObject instanceof Activity));
        localActivity = (Activity)paramObject;
        localActivity.setProgressBarIndeterminateVisibility(paramBoolean);
        localActivity.setProgressBarVisibility(paramBoolean);
      }
      while (!paramBoolean);
      localActivity.setProgress(0);
      return;
    }
  }

  public final b a(int paramInt, Object[] paramArrayOfObject)
  {
    this.b = 1;
    this.a = paramArrayOfObject;
    return this;
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onClick(View paramView)
  {
    a(new Object[] { paramView });
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramAdapterView;
    arrayOfObject[1] = paramView;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Long.valueOf(paramLong);
    a(arrayOfObject);
  }

  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramAdapterView;
    arrayOfObject[1] = paramView;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Long.valueOf(paramLong);
    a(arrayOfObject);
  }

  public final boolean onLongClick(View paramView)
  {
    Object localObject = a(new Object[] { paramView });
    if ((localObject instanceof Boolean))
      return ((Boolean)localObject).booleanValue();
    return false;
  }

  public final void onNothingSelected(AdapterView<?> paramAdapterView)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramAbsListView, this.c);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    this.c = paramInt;
    a(paramAbsListView, paramInt);
    ExpandableListView localExpandableListView;
    int m;
    ExpandableListAdapter localExpandableListAdapter;
    int i1;
    if ((paramAbsListView instanceof ExpandableListView))
    {
      localExpandableListView = (ExpandableListView)paramAbsListView;
      localExpandableListView.setTag(1090453508, Integer.valueOf(paramInt));
      if (paramInt == 0)
      {
        m = localExpandableListView.getFirstVisiblePosition();
        int n = localExpandableListView.getLastVisiblePosition() - m;
        localExpandableListAdapter = localExpandableListView.getExpandableListAdapter();
        i1 = 0;
        if (i1 <= n)
          break label74;
      }
    }
    while (true)
    {
      return;
      label74: long l2 = localExpandableListView.getExpandableListPosition(i1 + m);
      int i2 = ExpandableListView.getPackedPositionGroup(l2);
      int i3 = ExpandableListView.getPackedPositionChild(l2);
      View localView2;
      if (i2 >= 0)
      {
        localView2 = localExpandableListView.getChildAt(i1);
        Long localLong = (Long)localView2.getTag(1090453508);
        if ((localLong != null) && (localLong.longValue() == l2))
        {
          if (i3 != -1)
            break label183;
          localExpandableListAdapter.getGroupView(i2, localExpandableListView.isGroupExpanded(i2), localView2, localExpandableListView);
          localView2.setTag(1090453508, null);
        }
      }
      i1++;
      break;
      label183: if (i3 == -1 + localExpandableListAdapter.getChildrenCount(i2));
      for (boolean bool = true; ; bool = false)
      {
        localExpandableListAdapter.getChildView(i2, i3, bool, localView2, localExpandableListView);
        break;
      }
      paramAbsListView.setTag(1090453508, Integer.valueOf(paramInt));
      if (paramInt != 0)
        continue;
      int i = paramAbsListView.getFirstVisiblePosition();
      int j = paramAbsListView.getLastVisiblePosition() - i;
      ListAdapter localListAdapter = (ListAdapter)paramAbsListView.getAdapter();
      for (int k = 0; k <= j; k++)
      {
        long l1 = k + i;
        View localView1 = paramAbsListView.getChildAt(k);
        if ((Number)localView1.getTag(1090453508) == null)
          continue;
        localListAdapter.getView((int)l1, localView1, paramAbsListView);
        localView1.setTag(1090453508, null);
      }
    }
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramCharSequence;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    arrayOfObject[3] = Integer.valueOf(paramInt3);
    a(arrayOfObject);
  }

  public final void run()
  {
    a(new Object[0]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.b
 * JD-Core Version:    0.6.0
 */