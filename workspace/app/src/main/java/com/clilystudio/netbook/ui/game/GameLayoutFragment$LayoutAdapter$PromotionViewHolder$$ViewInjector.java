package com.clilystudio.netbook.ui.game;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

import butterknife.ButterKnife$Finder;

public class GameLayoutFragment$LayoutAdapter$PromotionViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameLayoutFragment$LayoutAdapter$PromotionViewHolder gameLayoutFragment$LayoutAdapter$PromotionViewHolder, Object object) {
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mIcon = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mName = (TextView) butterKnife$Finder.findRequiredView(object, 2131492928, "field 'mName'");
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mPlayingCount = (TextView) butterKnife$Finder.findRequiredView(object, 2131493482, "field 'mPlayingCount'");
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDownload = (NewGameDownloadButton) butterKnife$Finder.findRequiredView(object, 2131492916, "field 'mDownload'");
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDesc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'mDesc'");
    }

    public static void reset(GameLayoutFragment$LayoutAdapter$PromotionViewHolder gameLayoutFragment$LayoutAdapter$PromotionViewHolder) {
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mIcon = null;
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mName = null;
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mPlayingCount = null;
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDownload = null;
        gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDesc = null;
    }
}
