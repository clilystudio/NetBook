package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class RankCollapseItem$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, RankCollapseItem RankCollapseItem2, Object Object3) {
        RankCollapseItem2.mLabel = (TextView) Finder1.findRequiredView(Object3, 2131493515, "field 'mLabel'");
        RankCollapseItem2.mArrow = (ImageView) Finder1.findRequiredView(Object3, 2131493199, "field 'mArrow'");
        RankCollapseItem2.mItemContainer = (LinearLayout) Finder1.findRequiredView(Object3, 2131493578, "field 'mItemContainer'");
        RankCollapseItem2.mBottomDivdier = Finder1.findRequiredView(Object3, 2131493603, "field 'mBottomDivdier'");
        RankCollapseItem2.mTopDivdier = Finder1.findRequiredView(Object3, 2131493602, "field 'mTopDivdier'");
        RankCollapseItem2.mLabelContainer = (RelativeLayout) Finder1.findRequiredView(Object3, 2131493601, "field 'mLabelContainer'");
    }

    public static void reset(RankCollapseItem RankCollapseItem1) {
        RankCollapseItem1.mLabel = null;
        RankCollapseItem1.mArrow = null;
        RankCollapseItem1.mItemContainer = null;
        RankCollapseItem1.mBottomDivdier = null;
        RankCollapseItem1.mTopDivdier = null;
        RankCollapseItem1.mLabelContainer = null;
    }
}
