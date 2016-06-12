
package com.clilystudio.netbook.reader;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class ReadModeItem$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, ReadModeItem ReadModeItem2, Object Object3)
    {
        ReadModeItem2.mIcon = (ImageView) Finder1.findRequiredView( Object3, 2131493028, "field 'mIcon'" );
        ReadModeItem2.mName = (TextView) Finder1.findRequiredView( Object3, 2131492928, "field 'mName'" );
        ReadModeItem2.mFlagSelect = (TextView) Finder1.findRequiredView( Object3, 2131493703, "field 'mFlagSelect'" );
        ReadModeItem2.mFlagWeb = (TextView) Finder1.findRequiredView( Object3, 2131493701, "field 'mFlagWeb'" );
        ReadModeItem2.mChapter = (TextView) Finder1.findRequiredView( Object3, 2131493702, "field 'mChapter'" );
    }

    public static void reset(ReadModeItem ReadModeItem1)
    {
        ReadModeItem1.mIcon = null;
        ReadModeItem1.mName = null;
        ReadModeItem1.mFlagSelect = null;
        ReadModeItem1.mFlagWeb = null;
        ReadModeItem1.mChapter = null;
    }
}
