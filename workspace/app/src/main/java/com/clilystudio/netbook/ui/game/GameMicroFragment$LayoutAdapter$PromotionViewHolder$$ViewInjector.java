
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

public class GameMicroFragment$LayoutAdapter$PromotionViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameMicroFragment$LayoutAdapter$PromotionViewHolder PromotionViewHolder2, Object Object3)
    {
        PromotionViewHolder2.mIcon = (SmartImageView) Finder1.findRequiredView( Object3, 2131493028, "field 'mIcon'" );
        PromotionViewHolder2.mName = (TextView) Finder1.findRequiredView( Object3, 2131492928, "field 'mName'" );
        PromotionViewHolder2.mPlayingCount = (TextView) Finder1.findRequiredView( Object3, 2131493482, "field 'mPlayingCount'" );
        PromotionViewHolder2.mDownload = (NewGameDownloadButton) Finder1.findRequiredView( Object3, 2131492916, "field 'mDownload'" );
        PromotionViewHolder2.mDesc = (TextView) Finder1.findRequiredView( Object3, 2131493481, "field 'mDesc'" );
    }

    public static void reset(GameMicroFragment$LayoutAdapter$PromotionViewHolder PromotionViewHolder1)
    {
        PromotionViewHolder1.mIcon = null;
        PromotionViewHolder1.mName = null;
        PromotionViewHolder1.mPlayingCount = null;
        PromotionViewHolder1.mDownload = null;
        PromotionViewHolder1.mDesc = null;
    }
}
