package com.clilystudio.netbook.widget;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class GameLayoutItemView$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, GameLayoutItemView paramGameLayoutItemView, Object paramObject)
  {
    paramGameLayoutItemView.mImage = ((GameImageView)paramFinder.findRequiredView(paramObject, 2131493025, "field 'mImage'"));
    paramGameLayoutItemView.mTitle = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
    paramGameLayoutItemView.mSubTitle = ((TextView)paramFinder.findRequiredView(paramObject, 2131493018, "field 'mSubTitle'"));
    paramGameLayoutItemView.mAction = ((GameDownloadButton)paramFinder.findRequiredView(paramObject, 2131493705, "field 'mAction'"));
  }

  public static void reset(GameLayoutItemView paramGameLayoutItemView)
  {
    paramGameLayoutItemView.mImage = null;
    paramGameLayoutItemView.mTitle = null;
    paramGameLayoutItemView.mSubTitle = null;
    paramGameLayoutItemView.mAction = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.GameLayoutItemView..ViewInjector
 * JD-Core Version:    0.6.0
 */