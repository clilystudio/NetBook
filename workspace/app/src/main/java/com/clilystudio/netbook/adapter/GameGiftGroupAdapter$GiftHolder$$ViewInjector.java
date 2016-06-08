package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.widget.GiftGameGiftButton;

import butterknife.ButterKnife.Finder;

public class GameGiftGroupAdapter$GiftHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameGiftGroupAdapter.GiftHolder paramGiftHolder, Object paramObject) {
        paramGiftHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
        paramGiftHolder.desc = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'desc'"));
        paramGiftHolder.button = ((GiftGameGiftButton) paramFinder.findRequiredView(paramObject, 2131493679, "field 'button'"));
    }

    public static void reset(GameGiftGroupAdapter.GiftHolder paramGiftHolder) {
        paramGiftHolder.title = null;
        paramGiftHolder.desc = null;
        paramGiftHolder.button = null;
    }
}

