package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameLayoutFragment$LayoutAdapter$PromotionViewHolder extends ay {

    @InjectView(2131493481)
    TextView mDesc;

    @InjectView(2131492916)
    NewGameDownloadButton mDownload;

    @InjectView(2131493028)
    SmartImageView mIcon;

    @InjectView(2131492928)
    TextView mName;

    @InjectView(2131493482)
    TextView mPlayingCount;

    public GameLayoutFragment$LayoutAdapter$PromotionViewHolder(GameLayoutFragment.LayoutAdapter paramLayoutAdapter, View paramView) {
        super(paramView);
        ButterKnife.inject(this, paramView);
    }
}

