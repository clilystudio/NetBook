package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.widget.GiftGameGiftButton;

import butterknife.ButterKnife$Finder;

public class GameGiftGroupAdapter$GiftHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameGiftGroupAdapter$GiftHolder GiftHolder2, Object Object3) {
        GiftHolder2.title = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'title'");
        GiftHolder2.desc = (TextView) Finder1.findRequiredView(Object3, 2131493481, "field 'desc'");
        GiftHolder2.button = (GiftGameGiftButton) Finder1.findRequiredView(Object3, 2131493679, "field 'button'");
    }

    public static void reset(GameGiftGroupAdapter$GiftHolder GiftHolder1) {
        GiftHolder1.title = null;
        GiftHolder1.desc = null;
        GiftHolder1.button = null;
    }
}
