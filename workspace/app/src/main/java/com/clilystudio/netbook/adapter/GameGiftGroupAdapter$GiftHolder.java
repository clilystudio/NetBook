package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.GiftGameGiftButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

class GameGiftGroupAdapter$GiftHolder {
    @InjectView(value = 2131493679)
    GiftGameGiftButton button;
    @InjectView(value = 2131493481)
    TextView desc;
    @InjectView(value = 2131492936)
    TextView title;

    GameGiftGroupAdapter$GiftHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
