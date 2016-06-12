package com.clilystudio.netbook.ui;

import android.widget.TextView;

import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife$Finder;

public class RelateUgcFragment$GetUgcsTask$ViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, RelateUgcFragment$GetUgcsTask$ViewHolder ViewHolder2, Object Object3) {
        ViewHolder2.mCover = (CoverView) Finder1.findRequiredView(Object3, 2131493604, "field 'mCover'");
        ViewHolder2.mTitle = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'mTitle'");
        ViewHolder2.mCount = (TextView) Finder1.findRequiredView(Object3, 2131493239, "field 'mCount'");
        ViewHolder2.mAuthor = (TextView) Finder1.findRequiredView(Object3, 2131493317, "field 'mAuthor'");
        ViewHolder2.mDesc = (TextView) Finder1.findRequiredView(Object3, 2131493481, "field 'mDesc'");
        ViewHolder2.mUpdated = (TextView) Finder1.findRequiredView(Object3, 2131493783, "field 'mUpdated'");
        ViewHolder2.mContainer = Finder1.findRequiredView(Object3, 2131493577, "field 'mContainer'");
    }

    public static void reset(RelateUgcFragment$GetUgcsTask$ViewHolder ViewHolder1) {
        ViewHolder1.mCover = null;
        ViewHolder1.mTitle = null;
        ViewHolder1.mCount = null;
        ViewHolder1.mAuthor = null;
        ViewHolder1.mDesc = null;
        ViewHolder1.mUpdated = null;
        ViewHolder1.mContainer = null;
    }
}
