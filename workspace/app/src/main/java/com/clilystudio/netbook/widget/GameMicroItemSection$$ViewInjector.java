package com.clilystudio.netbook.widget;

import android.widget.TableLayout;

import butterknife.ButterKnife$Finder;

public class GameMicroItemSection$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameMicroItemSection gameMicroItemSection, Object object) {
        gameMicroItemSection.mContainer = (TableLayout) butterKnife$Finder.findRequiredView(object, 2131493577, "field 'mContainer'");
    }

    public static void reset(GameMicroItemSection gameMicroItemSection) {
        gameMicroItemSection.mContainer = null;
    }
}
