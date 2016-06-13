package com.clilystudio.netbook.ui.game;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

import butterknife.ButterKnife$Finder;

public class GameMicroFragment$LayoutAdapter$PromotionViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameMicroFragment$LayoutAdapter$PromotionViewHolder gameMicroFragment$LayoutAdapter$PromotionViewHolder, Object object) {
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mIcon = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mName = (TextView) butterKnife$Finder.findRequiredView(object, 2131492928, "field 'mName'");
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mPlayingCount = (TextView) butterKnife$Finder.findRequiredView(object, 2131493482, "field 'mPlayingCount'");
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mDownload = (NewGameDownloadButton) butterKnife$Finder.findRequiredView(object, 2131492916, "field 'mDownload'");
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mDesc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'mDesc'");
    }

    public static void reset(GameMicroFragment$LayoutAdapter$PromotionViewHolder gameMicroFragment$LayoutAdapter$PromotionViewHolder) {
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mIcon = null;
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mName = null;
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mPlayingCount = null;
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mDownload = null;
        gameMicroFragment$LayoutAdapter$PromotionViewHolder.mDesc = null;
    }
}
