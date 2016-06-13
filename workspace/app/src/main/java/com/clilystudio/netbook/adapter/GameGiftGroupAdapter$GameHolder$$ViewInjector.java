package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

import butterknife.ButterKnife$Finder;

public class GameGiftGroupAdapter$GameHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameGiftGroupAdapter$GameHolder gameGiftGroupAdapter$GameHolder, Object object) {
        gameGiftGroupAdapter$GameHolder.icon = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'icon'");
        gameGiftGroupAdapter$GameHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        gameGiftGroupAdapter$GameHolder.desc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'desc'");
        gameGiftGroupAdapter$GameHolder.button = (GiftGameGameButton) butterKnife$Finder.findRequiredView(object, 2131492916, "field 'button'");
    }

    public static void reset(GameGiftGroupAdapter$GameHolder gameGiftGroupAdapter$GameHolder) {
        gameGiftGroupAdapter$GameHolder.icon = null;
        gameGiftGroupAdapter$GameHolder.title = null;
        gameGiftGroupAdapter$GameHolder.desc = null;
        gameGiftGroupAdapter$GameHolder.button = null;
    }
}
