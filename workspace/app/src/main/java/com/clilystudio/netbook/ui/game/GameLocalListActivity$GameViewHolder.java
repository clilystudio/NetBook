package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;

public class GameLocalListActivity$GameViewHolder extends ay {

    View mContainer;
    TextView mCount;
    SmartImageView mIcon;
    TextView mIntro;
    TextView mName;
    Button mPlay;
    public GameLocalListActivity$GameViewHolder(GameLocalListActivity GameLocalListActivity1, View View2) {
        super(View2);
        ButterKnife.inject(this, View2);
    }
}
