
package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.widget.CoverView;

public class RelateBooksFragment$ViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, RelateBooksFragment$ViewHolder ViewHolder2, Object Object3)
    {
        ViewHolder2.mBook = (CoverView) Finder1.findRequiredView( Object3, 2131493971, "field 'mBook'" );
        ViewHolder2.mTitle = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'mTitle'" );
        ViewHolder2.mContainer = Finder1.findRequiredView( Object3, 2131493577, "field 'mContainer'" );
    }

    public static void reset(RelateBooksFragment$ViewHolder ViewHolder1)
    {
        ViewHolder1.mBook = null;
        ViewHolder1.mTitle = null;
        ViewHolder1.mContainer = null;
    }
}
