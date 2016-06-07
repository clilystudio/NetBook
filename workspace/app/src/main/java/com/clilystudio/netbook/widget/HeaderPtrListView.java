package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;
import com.arcsoft.hpay100.a.a;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

public class HeaderPtrListView extends PullToRefreshListView
{
  public HeaderPtrListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a.a(paramContext, (ListView)h());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.HeaderPtrListView
 * JD-Core Version:    0.6.0
 */