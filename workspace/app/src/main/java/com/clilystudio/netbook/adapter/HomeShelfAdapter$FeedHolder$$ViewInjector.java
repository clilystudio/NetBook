
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.widget.BookShelfFlagView;

public class HomeShelfAdapter$FeedHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeShelfAdapter$FeedHolder FeedHolder2, Object Object3)
    {
        FeedHolder2.title = (TextView) Finder1.findRequiredView( Object3, 2131493481, "field 'title'" );
        FeedHolder2.flag = (BookShelfFlagView) Finder1.findRequiredView( Object3, 2131493754, "field 'flag'" );
    }

    public static void reset(HomeShelfAdapter$FeedHolder FeedHolder1)
    {
        FeedHolder1.title = null;
        FeedHolder1.flag = null;
    }
}
