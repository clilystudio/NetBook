package com.clilystudio.netbook.widget;

import android.widget.TableLayout;

import butterknife.ButterKnife.Finder;

public class GameMicroItemSection$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameMicroItemSection paramGameMicroItemSection, Object paramObject) {
        paramGameMicroItemSection.mContainer = ((TableLayout) paramFinder.findRequiredView(paramObject, 2131493577, "field 'mContainer'"));
    }

    public static void reset(GameMicroItemSection paramGameMicroItemSection) {
        paramGameMicroItemSection.mContainer = null;
    }
}

