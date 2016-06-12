
package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

public class GameLayoutFragment$LayoutAdapter$PromotionViewHolder extends ay {

    public GameLayoutFragment$LayoutAdapter$PromotionViewHolder(GameLayoutFragment$LayoutAdapter LayoutAdapter1, View View2)
    {
        super( View2 );
        ButterKnife.inject( this, View2 );
    }

    TextView mDesc;
    NewGameDownloadButton mDownload;
    SmartImageView mIcon;
    TextView mName;
    TextView mPlayingCount;
}
