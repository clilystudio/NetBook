package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class BestReviewsFragment$ViewHolder {
    @InjectView(value = 2131492899)
    SmartImageView avatar;
    @InjectView(value = 2131493629)
    ImageView avatarVerify;
    @InjectView(value = 2131493628)
    View container;
    @InjectView(value = 2131492905)
    TextView content;
    @InjectView(value = 2131493634)
    TextView helpfulCount;
    @InjectView(value = 2131493631)
    TextView lv;
    @InjectView(value = 2131493633)
    RatingView rating;
    @InjectView(value = 2131492935)
    TextView time;
    @InjectView(value = 2131492936)
    TextView title;
    @InjectView(value = 2131493630)
    TextView user;

    BestReviewsFragment$ViewHolder(BestReviewsFragment bestReviewsFragment, View view) {
        ButterKnife.inject((Object) this, view);
    }
}
