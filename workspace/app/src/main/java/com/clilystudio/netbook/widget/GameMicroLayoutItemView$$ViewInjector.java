
package com.clilystudio.netbook.widget;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class GameMicroLayoutItemView$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameMicroLayoutItemView GameMicroLayoutItemView2, Object Object3)
    {
        GameMicroLayoutItemView2.mImage = (GameImageView) Finder1.findRequiredView( Object3, 2131493025, "field 'mImage'" );
        GameMicroLayoutItemView2.mTitle = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'mTitle'" );
        GameMicroLayoutItemView2.mSubTitle = (TextView) Finder1.findRequiredView( Object3, 2131493018, "field 'mSubTitle'" );
        GameMicroLayoutItemView2.mAction = (GameDownloadButton) Finder1.findRequiredView( Object3, 2131493705, "field 'mAction'" );
    }

    public static void reset(GameMicroLayoutItemView GameMicroLayoutItemView1)
    {
        GameMicroLayoutItemView1.mImage = null;
        GameMicroLayoutItemView1.mTitle = null;
        GameMicroLayoutItemView1.mSubTitle = null;
        GameMicroLayoutItemView1.mAction = null;
    }
}
