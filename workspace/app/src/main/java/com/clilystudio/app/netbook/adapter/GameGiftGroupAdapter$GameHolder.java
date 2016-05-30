package com.clilystudio.app.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.widget.GiftGameGameButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

class GameGiftGroupAdapter$GameHolder {

    @InjectView(2131492916)
    GiftGameGameButton button;

    @InjectView(2131493481)
    TextView desc;

    @InjectView(2131493028)
    SmartImageView icon;

    @InjectView(R.id.title)
    TextView title;

    GameGiftGroupAdapter$GameHolder(View paramView) {
        ButterKnife.inject(this, paramView);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.GameGiftGroupAdapter.GameHolder
 * JD-Core Version:    0.6.2
 */