
package com.clilystudio.netbook.widget;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class GameLayoutItemView$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameLayoutItemView GameLayoutItemView2, Object Object3)
    {
        GameLayoutItemView2.mImage = (GameImageView) Finder1.findRequiredView( Object3, 2131493025, "field 'mImage'" );
        GameLayoutItemView2.mTitle = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'mTitle'" );
        GameLayoutItemView2.mSubTitle = (TextView) Finder1.findRequiredView( Object3, 2131493018, "field 'mSubTitle'" );
        GameLayoutItemView2.mAction = (GameDownloadButton) Finder1.findRequiredView( Object3, 2131493705, "field 'mAction'" );
    }

    public static void reset(GameLayoutItemView GameLayoutItemView1)
    {
        GameLayoutItemView1.mImage = null;
        GameLayoutItemView1.mTitle = null;
        GameLayoutItemView1.mSubTitle = null;
        GameLayoutItemView1.mAction = null;
    }
}
