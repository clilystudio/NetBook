package com.clilystudio.netbook.widget;

import android.widget.TableLayout;

import butterknife.ButterKnife$Finder;

public class GameItemSection$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameItemSection gameItemSection, Object object) {
        gameItemSection.mContainer = (TableLayout) butterKnife$Finder.findRequiredView(object, 2131493577, "field 'mContainer'");
    }

    public static void reset(GameItemSection gameItemSection) {
        gameItemSection.mContainer = null;
    }
}
