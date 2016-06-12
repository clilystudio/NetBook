
package com.clilystudio.netbook.widget;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class TopicSectionItem$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, TopicSectionItem TopicSectionItem2, Object Object3)
    {
        TopicSectionItem2.mIcon = (ImageView) Finder1.findRequiredView( Object3, 2131493028, "field 'mIcon'" );
        TopicSectionItem2.mLabel = (TextView) Finder1.findRequiredView( Object3, 2131493515, "field 'mLabel'" );
    }

    public static void reset(TopicSectionItem TopicSectionItem1)
    {
        TopicSectionItem1.mIcon = null;
        TopicSectionItem1.mLabel = null;
    }
}
