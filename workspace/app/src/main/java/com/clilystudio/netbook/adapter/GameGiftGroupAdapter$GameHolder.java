package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

class GameGiftGroupAdapter$GameHolder {

    @InjectView(2131492916)
    GiftGameGameButton button;

    @InjectView(2131493481)
    TextView desc;

    @InjectView(2131493028)
    SmartImageView icon;

    @InjectView(2131492936)
    TextView title;

    GameGiftGroupAdapter$GameHolder(View paramView) {
        ButterKnife.inject(this, paramView);
    }
}

