package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class NotificationAdapter$ViewHolder {

    @InjectView(2131492899)
    CircularSmartImageView mAvatar;

    @InjectView(2131493712)
    TextView mMainText;

    @InjectView(2131493713)
    TextView mSubText;

    NotificationAdapter$ViewHolder(View paramView) {
        ButterKnife.inject(this, paramView);
    }
}

