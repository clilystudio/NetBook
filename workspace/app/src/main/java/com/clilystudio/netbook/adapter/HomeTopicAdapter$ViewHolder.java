package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeTopicAdapter$ViewHolder {
    @InjectView(value = 2131493239)
    TextView mCount;
    @InjectView(value = 2131493604)
    SmartImageView mCover;
    @InjectView(value = 2131492936)
    TextView mTitle;

    HomeTopicAdapter$ViewHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
