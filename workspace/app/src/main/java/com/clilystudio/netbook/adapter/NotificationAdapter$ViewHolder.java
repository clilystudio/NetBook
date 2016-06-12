package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife;

class NotificationAdapter$ViewHolder {

    CircularSmartImageView mAvatar;
    TextView mMainText;
    TextView mSubText;
    NotificationAdapter$ViewHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
