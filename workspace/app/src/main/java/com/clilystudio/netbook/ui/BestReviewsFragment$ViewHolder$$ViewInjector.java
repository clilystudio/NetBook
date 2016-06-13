package com.clilystudio.netbook.ui;

import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife$Finder;

public class BestReviewsFragment$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, BestReviewsFragment$ViewHolder bestReviewsFragment$ViewHolder, Object object) {
        bestReviewsFragment$ViewHolder.avatar = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131492899, "field 'avatar'");
        bestReviewsFragment$ViewHolder.user = (TextView) butterKnife$Finder.findRequiredView(object, 2131493630, "field 'user'");
        bestReviewsFragment$ViewHolder.lv = (TextView) butterKnife$Finder.findRequiredView(object, 2131493631, "field 'lv'");
        bestReviewsFragment$ViewHolder.time = (TextView) butterKnife$Finder.findRequiredView(object, 2131492935, "field 'time'");
        bestReviewsFragment$ViewHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        bestReviewsFragment$ViewHolder.content = (TextView) butterKnife$Finder.findRequiredView(object, 2131492905, "field 'content'");
        bestReviewsFragment$ViewHolder.helpfulCount = (TextView) butterKnife$Finder.findRequiredView(object, 2131493634, "field 'helpfulCount'");
        bestReviewsFragment$ViewHolder.avatarVerify = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493629, "field 'avatarVerify'");
        bestReviewsFragment$ViewHolder.rating = (RatingView) butterKnife$Finder.findRequiredView(object, 2131493633, "field 'rating'");
        bestReviewsFragment$ViewHolder.container = butterKnife$Finder.findRequiredView(object, 2131493628, "field 'container'");
    }

    public static void reset(BestReviewsFragment$ViewHolder bestReviewsFragment$ViewHolder) {
        bestReviewsFragment$ViewHolder.avatar = null;
        bestReviewsFragment$ViewHolder.user = null;
        bestReviewsFragment$ViewHolder.lv = null;
        bestReviewsFragment$ViewHolder.time = null;
        bestReviewsFragment$ViewHolder.title = null;
        bestReviewsFragment$ViewHolder.content = null;
        bestReviewsFragment$ViewHolder.helpfulCount = null;
        bestReviewsFragment$ViewHolder.avatarVerify = null;
        bestReviewsFragment$ViewHolder.rating = null;
        bestReviewsFragment$ViewHolder.container = null;
    }
}
