package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameLocalListActivity$GameViewHolder extends ay {
    @InjectView(value = 2131493689)
    View mContainer;
    @InjectView(value = 2131493694)
    TextView mCount;
    @InjectView(value = 2131493690)
    SmartImageView mIcon;
    @InjectView(value = 2131493693)
    TextView mIntro;
    @InjectView(value = 2131493692)
    TextView mName;
    @InjectView(value = 2131493691)
    Button mPlay;

    public GameLocalListActivity$GameViewHolder(GameLocalListActivity gameLocalListActivity, View view) {
        super(view);
        ButterKnife.inject((Object) this, view);
    }
}
