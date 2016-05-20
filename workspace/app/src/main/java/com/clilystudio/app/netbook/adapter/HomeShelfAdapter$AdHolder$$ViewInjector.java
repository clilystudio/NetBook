package com.clilystudio.app.netbook.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.widget.BookShelfFlagView;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.HomeShelfAdapter.AdHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */