package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

import butterknife.ButterKnife;

class GameGiftGroupAdapter$GameHolder {

    GiftGameGameButton button;
    TextView desc;
    SmartImageView icon;
    TextView title;
    GameGiftGroupAdapter$GameHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
