package com.clilystudio.netbook.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.clilystudio.netbook.ui.SmartImageView;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.HomeTopicAdapter.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */