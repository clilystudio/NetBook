package com.clilystudio.app.netbook.ui.game;

import android.widget.TextView;

import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.widget.NewGameDownloadButton;

import butterknife.ButterKnife.Finder;

public class GameLayoutFragment$LayoutAdapter$PromotionViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameLayoutFragment.LayoutAdapter.PromotionViewHolder paramPromotionViewHolder, Object paramObject) {
        paramPromotionViewHolder.mIcon = ((SmartImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
        paramPromotionViewHolder.mName = ((TextView) paramFinder.findRequiredView(paramObject, 2131492928, "field 'mName'"));
        paramPromotionViewHolder.mPlayingCount = ((TextView) paramFinder.findRequiredView(paramObject, 2131493482, "field 'mPlayingCount'"));
        paramPromotionViewHolder.mDownload = ((NewGameDownloadButton) paramFinder.findRequiredView(paramObject, 2131492916, "field 'mDownload'"));
        paramPromotionViewHolder.mDesc = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'mDesc'"));
    }

    public static void reset(GameLayoutFragment.LayoutAdapter.PromotionViewHolder paramPromotionViewHolder) {
        paramPromotionViewHolder.mIcon = null;
        paramPromotionViewHolder.mName = null;
        paramPromotionViewHolder.mPlayingCount = null;
        paramPromotionViewHolder.mDownload = null;
        paramPromotionViewHolder.mDesc = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.GameLayoutFragment.LayoutAdapter.PromotionViewHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */