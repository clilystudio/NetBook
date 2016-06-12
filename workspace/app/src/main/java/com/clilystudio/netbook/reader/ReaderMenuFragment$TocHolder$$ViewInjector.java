
package com.clilystudio.netbook.reader;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class ReaderMenuFragment$TocHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, ReaderMenuFragment$TocHolder TocHolder2, Object Object3)
    {
        TocHolder2.title = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'title'" );
        TocHolder2.link = (TextView) Finder1.findRequiredView( Object3, 2131493736, "field 'link'" );
        TocHolder2.time = (TextView) Finder1.findRequiredView( Object3, 2131492935, "field 'time'" );
    }

    public static void reset(ReaderMenuFragment$TocHolder TocHolder1)
    {
        TocHolder1.title = null;
        TocHolder1.link = null;
        TocHolder1.time = null;
    }
}
