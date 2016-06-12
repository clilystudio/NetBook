
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.BookShelfFlagView;

public class HomeShelfAdapter$AdHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeShelfAdapter$AdHolder AdHolder2, Object Object3)
    {
        AdHolder2.title = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'title'" );
        AdHolder2.desc = (TextView) Finder1.findRequiredView( Object3, 2131493481, "field 'desc'" );
        AdHolder2.flag = (BookShelfFlagView) Finder1.findRequiredView( Object3, 2131493754, "field 'flag'" );
        AdHolder2.cover = (SmartImageView) Finder1.findRequiredView( Object3, 2131493604, "field 'cover'" );
    }

    public static void reset(HomeShelfAdapter$AdHolder AdHolder1)
    {
        AdHolder1.title = null;
        AdHolder1.desc = null;
        AdHolder1.flag = null;
        AdHolder1.cover = null;
    }
}
