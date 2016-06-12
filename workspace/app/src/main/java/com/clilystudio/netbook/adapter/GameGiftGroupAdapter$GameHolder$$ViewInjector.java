
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

public class GameGiftGroupAdapter$GameHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameGiftGroupAdapter$GameHolder GameHolder2, Object Object3)
    {
        GameHolder2.icon = (SmartImageView) Finder1.findRequiredView( Object3, 2131493028, "field 'icon'" );
        GameHolder2.title = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'title'" );
        GameHolder2.desc = (TextView) Finder1.findRequiredView( Object3, 2131493481, "field 'desc'" );
        GameHolder2.button = (GiftGameGameButton) Finder1.findRequiredView( Object3, 2131492916, "field 'button'" );
    }

    public static void reset(GameGiftGroupAdapter$GameHolder GameHolder1)
    {
        GameHolder1.icon = null;
        GameHolder1.title = null;
        GameHolder1.desc = null;
        GameHolder1.button = null;
    }
}
