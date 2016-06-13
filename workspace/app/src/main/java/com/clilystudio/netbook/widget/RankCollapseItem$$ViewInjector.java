package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class RankCollapseItem$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, RankCollapseItem rankCollapseItem, Object object) {
        rankCollapseItem.mLabel = (TextView) butterKnife$Finder.findRequiredView(object, 2131493515, "field 'mLabel'");
        rankCollapseItem.mArrow = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493199, "field 'mArrow'");
        rankCollapseItem.mItemContainer = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493578, "field 'mItemContainer'");
        rankCollapseItem.mBottomDivdier = butterKnife$Finder.findRequiredView(object, 2131493603, "field 'mBottomDivdier'");
        rankCollapseItem.mTopDivdier = butterKnife$Finder.findRequiredView(object, 2131493602, "field 'mTopDivdier'");
        rankCollapseItem.mLabelContainer = (RelativeLayout) butterKnife$Finder.findRequiredView(object, 2131493601, "field 'mLabelContainer'");
    }

    public static void reset(RankCollapseItem rankCollapseItem) {
        rankCollapseItem.mLabel = null;
        rankCollapseItem.mArrow = null;
        rankCollapseItem.mItemContainer = null;
        rankCollapseItem.mBottomDivdier = null;
        rankCollapseItem.mTopDivdier = null;
        rankCollapseItem.mLabelContainer = null;
    }
}
