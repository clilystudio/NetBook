package com.clilystudio.netbook.ui;

import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife$Finder;

public class BestReviewsFragment$ViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, BestReviewsFragment$ViewHolder ViewHolder2, Object Object3) {
        ViewHolder2.avatar = (SmartImageView) Finder1.findRequiredView(Object3, 2131492899, "field 'avatar'");
        ViewHolder2.user = (TextView) Finder1.findRequiredView(Object3, 2131493630, "field 'user'");
        ViewHolder2.lv = (TextView) Finder1.findRequiredView(Object3, 2131493631, "field 'lv'");
        ViewHolder2.time = (TextView) Finder1.findRequiredView(Object3, 2131492935, "field 'time'");
        ViewHolder2.title = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'title'");
        ViewHolder2.content = (TextView) Finder1.findRequiredView(Object3, 2131492905, "field 'content'");
        ViewHolder2.helpfulCount = (TextView) Finder1.findRequiredView(Object3, 2131493634, "field 'helpfulCount'");
        ViewHolder2.avatarVerify = (ImageView) Finder1.findRequiredView(Object3, 2131493629, "field 'avatarVerify'");
        ViewHolder2.rating = (RatingView) Finder1.findRequiredView(Object3, 2131493633, "field 'rating'");
        ViewHolder2.container = Finder1.findRequiredView(Object3, 2131493628, "field 'container'");
    }

    public static void reset(BestReviewsFragment$ViewHolder ViewHolder1) {
        ViewHolder1.avatar = null;
        ViewHolder1.user = null;
        ViewHolder1.lv = null;
        ViewHolder1.time = null;
        ViewHolder1.title = null;
        ViewHolder1.content = null;
        ViewHolder1.helpfulCount = null;
        ViewHolder1.avatarVerify = null;
        ViewHolder1.rating = null;
        ViewHolder1.container = null;
    }
}
