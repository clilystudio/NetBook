package com.clilystudio.netbook.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.BookShelfFlagView;

public class HomeShelfAdapter$AdHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, HomeShelfAdapter.AdHolder paramAdHolder, Object paramObject)
  {
    paramAdHolder.title = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
    paramAdHolder.desc = ((TextView)paramFinder.findRequiredView(paramObject, 2131493481, "field 'desc'"));
    paramAdHolder.flag = ((BookShelfFlagView)paramFinder.findRequiredView(paramObject, 2131493754, "field 'flag'"));
    paramAdHolder.cover = ((SmartImageView)paramFinder.findRequiredView(paramObject, 2131493604, "field 'cover'"));
  }

  public static void reset(HomeShelfAdapter.AdHolder paramAdHolder)
  {
    paramAdHolder.title = null;
    paramAdHolder.desc = null;
    paramAdHolder.flag = null;
    paramAdHolder.cover = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.HomeShelfAdapter.AdHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */