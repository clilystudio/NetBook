package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameLayoutFragment$LayoutAdapter$PromotionViewHolder extends ay {
    @InjectView(value = 2131493481)
    TextView mDesc;
    @InjectView(value = 2131492916)
    NewGameDownloadButton mDownload;
    @InjectView(value = 2131493028)
    SmartImageView mIcon;
    @InjectView(value = 2131492928)
    TextView mName;
    @InjectView(value = 2131493482)
    TextView mPlayingCount;

    public GameLayoutFragment$LayoutAdapter$PromotionViewHolder(GameLayoutFragment.LayoutAdapter layoutAdapter, View view) {
        super(view);
        ButterKnife.inject((Object) this, view);
    }
}
