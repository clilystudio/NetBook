package com.ushaqi.zhuishushenqi.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.widget.BookShelfFlagView;

public class HomeShelfAdapter$FeedHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, HomeShelfAdapter.FeedHolder paramFeedHolder, Object paramObject)
  {
    paramFeedHolder.title = ((TextView)paramFinder.findRequiredView(paramObject, 2131493481, "field 'title'"));
    paramFeedHolder.flag = ((BookShelfFlagView)paramFinder.findRequiredView(paramObject, 2131493754, "field 'flag'"));
  }

  public static void reset(HomeShelfAdapter.FeedHolder paramFeedHolder)
  {
    paramFeedHolder.title = null;
    paramFeedHolder.flag = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter.FeedHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */