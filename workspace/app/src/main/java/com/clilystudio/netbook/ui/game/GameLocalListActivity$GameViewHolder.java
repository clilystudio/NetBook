package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameLocalListActivity$GameViewHolder extends ay {

    @InjectView(2131493689)
    View mContainer;

    @InjectView(2131493694)
    TextView mCount;

    @InjectView(2131493690)
    SmartImageView mIcon;

    @InjectView(2131493693)
    TextView mIntro;

    @InjectView(2131493692)
    TextView mName;

    @InjectView(2131493691)
    Button mPlay;

    public GameLocalListActivity$GameViewHolder(GameLocalListActivity paramGameLocalListActivity, View paramView) {
        super(paramView);
        ButterKnife.inject(this, paramView);
    }
}

