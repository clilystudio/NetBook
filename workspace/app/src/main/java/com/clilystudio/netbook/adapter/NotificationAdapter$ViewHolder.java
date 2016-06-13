package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class NotificationAdapter$ViewHolder {
    @InjectView(value = 2131492899)
    CircularSmartImageView mAvatar;
    @InjectView(value = 2131493712)
    TextView mMainText;
    @InjectView(value = 2131493713)
    TextView mSubText;

    NotificationAdapter$ViewHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
