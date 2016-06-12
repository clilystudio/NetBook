
package com.clilystudio.netbook.widget;

import android.view.View;
import android.widget.TableLayout;
import butterknife.ButterKnife$Finder;

public class GameItemSection$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameItemSection GameItemSection2, Object Object3)
    {
        GameItemSection2.mContainer = (TableLayout) Finder1.findRequiredView( Object3, 2131493577, "field 'mContainer'" );
    }

    public static void reset(GameItemSection GameItemSection1)
    {
        GameItemSection1.mContainer = null;
    }
}
