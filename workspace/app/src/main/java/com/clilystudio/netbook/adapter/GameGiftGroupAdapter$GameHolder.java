package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

class GameGiftGroupAdapter$GameHolder {
    @InjectView(value = 2131492916)
    GiftGameGameButton button;
    @InjectView(value = 2131493481)
    TextView desc;
    @InjectView(value = 2131493028)
    SmartImageView icon;
    @InjectView(value = 2131492936)
    TextView title;

    GameGiftGroupAdapter$GameHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
