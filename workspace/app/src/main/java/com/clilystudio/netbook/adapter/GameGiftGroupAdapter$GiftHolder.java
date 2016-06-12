package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.GiftGameGiftButton;

import butterknife.ButterKnife;

class GameGiftGroupAdapter$GiftHolder {

    GiftGameGiftButton button;
    TextView desc;
    TextView title;
    GameGiftGroupAdapter$GiftHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
