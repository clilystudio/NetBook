package com.clilystudio.app.netbook.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.clilystudio.app.netbook.ui.SmartImageView;

public class HomeTopicAdapter$ViewHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, HomeTopicAdapter.ViewHolder paramViewHolder, Object paramObject)
  {
    paramViewHolder.mCover = ((SmartImageView)paramFinder.findRequiredView(paramObject, 2131493604, "field 'mCover'"));
    paramViewHolder.mTitle = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
    paramViewHolder.mCount = ((TextView)paramFinder.findRequiredView(paramObject, 2131493239, "field 'mCount'"));
  }

  public static void reset(HomeTopicAdapter.ViewHolder paramViewHolder)
  {
    paramViewHolder.mCover = null;
    paramViewHolder.mTitle = null;
    paramViewHolder.mCount = null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.HomeTopicAdapter.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */