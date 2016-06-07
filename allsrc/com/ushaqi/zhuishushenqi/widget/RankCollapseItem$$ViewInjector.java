package com.ushaqi.zhuishushenqi.widget;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class RankCollapseItem$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, RankCollapseItem paramRankCollapseItem, Object paramObject)
  {
    paramRankCollapseItem.mLabel = ((TextView)paramFinder.findRequiredView(paramObject, 2131493515, "field 'mLabel'"));
    paramRankCollapseItem.mArrow = ((ImageView)paramFinder.findRequiredView(paramObject, 2131493199, "field 'mArrow'"));
    paramRankCollapseItem.mItemContainer = ((LinearLayout)paramFinder.findRequiredView(paramObject, 2131493578, "field 'mItemContainer'"));
    paramRankCollapseItem.mBottomDivdier = paramFinder.findRequiredView(paramObject, 2131493603, "field 'mBottomDivdier'");
    paramRankCollapseItem.mTopDivdier = paramFinder.findRequiredView(paramObject, 2131493602, "field 'mTopDivdier'");
    paramRankCollapseItem.mLabelContainer = ((RelativeLayout)paramFinder.findRequiredView(paramObject, 2131493601, "field 'mLabelContainer'"));
  }

  public static void reset(RankCollapseItem paramRankCollapseItem)
  {
    paramRankCollapseItem.mLabel = null;
    paramRankCollapseItem.mArrow = null;
    paramRankCollapseItem.mItemContainer = null;
    paramRankCollapseItem.mBottomDivdier = null;
    paramRankCollapseItem.mTopDivdier = null;
    paramRankCollapseItem.mLabelContainer = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.RankCollapseItem..ViewInjector
 * JD-Core Version:    0.6.0
 */