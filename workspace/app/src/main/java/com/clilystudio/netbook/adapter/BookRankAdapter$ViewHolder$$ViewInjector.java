
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.SmartImageView;

public class BookRankAdapter$ViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, BookRankAdapter$ViewHolder ViewHolder2, Object Object3)
    {
        ViewHolder2.cover = (SmartImageView) Finder1.findRequiredView( Object3, 2131493626, "field 'cover'" );
        ViewHolder2.title = (TextView) Finder1.findRequiredView( Object3, 2131493627, "field 'title'" );
    }

    public static void reset(BookRankAdapter$ViewHolder ViewHolder1)
    {
        ViewHolder1.cover = null;
        ViewHolder1.title = null;
    }
}
