package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;

class HomeTopicAdapter$ViewHolder {

    TextView mCount;
    SmartImageView mCover;
    TextView mTitle;
    HomeTopicAdapter$ViewHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
