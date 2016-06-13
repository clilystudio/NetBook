package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.widget.GiftGameGiftButton;

import butterknife.ButterKnife$Finder;

public class GameGiftGroupAdapter$GiftHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameGiftGroupAdapter$GiftHolder gameGiftGroupAdapter$GiftHolder, Object object) {
        gameGiftGroupAdapter$GiftHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        gameGiftGroupAdapter$GiftHolder.desc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'desc'");
        gameGiftGroupAdapter$GiftHolder.button = (GiftGameGiftButton) butterKnife$Finder.findRequiredView(object, 2131493679, "field 'button'");
    }

    public static void reset(GameGiftGroupAdapter$GiftHolder gameGiftGroupAdapter$GiftHolder) {
        gameGiftGroupAdapter$GiftHolder.title = null;
        gameGiftGroupAdapter$GiftHolder.desc = null;
        gameGiftGroupAdapter$GiftHolder.button = null;
    }
}
