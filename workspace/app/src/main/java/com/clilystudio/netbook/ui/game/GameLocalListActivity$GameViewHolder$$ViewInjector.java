
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.SmartImageView;

public class GameLocalListActivity$GameViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameLocalListActivity$GameViewHolder GameViewHolder2, Object Object3)
    {
        GameViewHolder2.mContainer = Finder1.findRequiredView( Object3, 2131493689, "field 'mContainer'" );
        GameViewHolder2.mIcon = (SmartImageView) Finder1.findRequiredView( Object3, 2131493690, "field 'mIcon'" );
        GameViewHolder2.mName = (TextView) Finder1.findRequiredView( Object3, 2131493692, "field 'mName'" );
        GameViewHolder2.mCount = (TextView) Finder1.findRequiredView( Object3, 2131493694, "field 'mCount'" );
        GameViewHolder2.mIntro = (TextView) Finder1.findRequiredView( Object3, 2131493693, "field 'mIntro'" );
        GameViewHolder2.mPlay = (Button) Finder1.findRequiredView( Object3, 2131493691, "field 'mPlay'" );
    }

    public static void reset(GameLocalListActivity$GameViewHolder GameViewHolder1)
    {
        GameViewHolder1.mContainer = null;
        GameViewHolder1.mIcon = null;
        GameViewHolder1.mName = null;
        GameViewHolder1.mCount = null;
        GameViewHolder1.mIntro = null;
        GameViewHolder1.mPlay = null;
    }
}
