package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeTopicAdapter$ViewHolder {

    @InjectView(2131493239)
    TextView mCount;

    @InjectView(2131493604)
    SmartImageView mCover;

    @InjectView(2131492936)
    TextView mTitle;

    HomeTopicAdapter$ViewHolder(View paramView) {
        ButterKnife.inject(this, paramView);
    }
}

