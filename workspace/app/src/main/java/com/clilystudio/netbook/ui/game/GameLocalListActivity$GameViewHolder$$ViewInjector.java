package com.clilystudio.netbook.ui.game;

import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife$Finder;

public class GameLocalListActivity$GameViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameLocalListActivity$GameViewHolder gameLocalListActivity$GameViewHolder, Object object) {
        gameLocalListActivity$GameViewHolder.mContainer = butterKnife$Finder.findRequiredView(object, 2131493689, "field 'mContainer'");
        gameLocalListActivity$GameViewHolder.mIcon = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493690, "field 'mIcon'");
        gameLocalListActivity$GameViewHolder.mName = (TextView) butterKnife$Finder.findRequiredView(object, 2131493692, "field 'mName'");
        gameLocalListActivity$GameViewHolder.mCount = (TextView) butterKnife$Finder.findRequiredView(object, 2131493694, "field 'mCount'");
        gameLocalListActivity$GameViewHolder.mIntro = (TextView) butterKnife$Finder.findRequiredView(object, 2131493693, "field 'mIntro'");
        gameLocalListActivity$GameViewHolder.mPlay = (Button) butterKnife$Finder.findRequiredView(object, 2131493691, "field 'mPlay'");
    }

    public static void reset(GameLocalListActivity$GameViewHolder gameLocalListActivity$GameViewHolder) {
        gameLocalListActivity$GameViewHolder.mContainer = null;
        gameLocalListActivity$GameViewHolder.mIcon = null;
        gameLocalListActivity$GameViewHolder.mName = null;
        gameLocalListActivity$GameViewHolder.mCount = null;
        gameLocalListActivity$GameViewHolder.mIntro = null;
        gameLocalListActivity$GameViewHolder.mPlay = null;
    }
}
