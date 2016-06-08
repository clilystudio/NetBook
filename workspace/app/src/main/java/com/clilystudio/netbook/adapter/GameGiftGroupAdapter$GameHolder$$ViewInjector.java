package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

import butterknife.ButterKnife.Finder;

public class GameGiftGroupAdapter$GameHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameGiftGroupAdapter.GameHolder paramGameHolder, Object paramObject) {
        paramGameHolder.icon = ((SmartImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'icon'"));
        paramGameHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
        paramGameHolder.desc = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'desc'"));
        paramGameHolder.button = ((GiftGameGameButton) paramFinder.findRequiredView(paramObject, 2131492916, "field 'button'"));
    }

    public static void reset(GameGiftGroupAdapter.GameHolder paramGameHolder) {
        paramGameHolder.icon = null;
        paramGameHolder.title = null;
        paramGameHolder.desc = null;
        paramGameHolder.button = null;
    }
}

