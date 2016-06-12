package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife;

public class BestReviewsFragment$ViewHolder {

    SmartImageView avatar;
    ImageView avatarVerify;
    View container;
    TextView content;
    TextView helpfulCount;
    TextView lv;
    RatingView rating;
    TextView time;
    TextView title;
    TextView user;
    BestReviewsFragment$ViewHolder(BestReviewsFragment BestReviewsFragment1, View View2) {
        ButterKnife.inject(this, View2);
    }
}
