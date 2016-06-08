package com.clilystudio.netbook.ui.game;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

import butterknife.ButterKnife.Finder;

public class GameMicroFragment$LayoutAdapter$PromotionViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameMicroFragment.LayoutAdapter.PromotionViewHolder paramPromotionViewHolder, Object paramObject) {
        paramPromotionViewHolder.mIcon = ((SmartImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
        paramPromotionViewHolder.mName = ((TextView) paramFinder.findRequiredView(paramObject, 2131492928, "field 'mName'"));
        paramPromotionViewHolder.mPlayingCount = ((TextView) paramFinder.findRequiredView(paramObject, 2131493482, "field 'mPlayingCount'"));
        paramPromotionViewHolder.mDownload = ((NewGameDownloadButton) paramFinder.findRequiredView(paramObject, 2131492916, "field 'mDownload'"));
        paramPromotionViewHolder.mDesc = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'mDesc'"));
    }

    public static void reset(GameMicroFragment.LayoutAdapter.PromotionViewHolder paramPromotionViewHolder) {
        paramPromotionViewHolder.mIcon = null;
        paramPromotionViewHolder.mName = null;
        paramPromotionViewHolder.mPlayingCount = null;
        paramPromotionViewHolder.mDownload = null;
        paramPromotionViewHolder.mDesc = null;
    }
}

