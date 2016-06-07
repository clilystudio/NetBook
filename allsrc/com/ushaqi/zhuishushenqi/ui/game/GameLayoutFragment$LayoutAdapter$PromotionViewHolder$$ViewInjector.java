package com.ushaqi.zhuishushenqi.ui.game;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.widget.NewGameDownloadButton;

public class GameLayoutFragment$LayoutAdapter$PromotionViewHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, GameLayoutFragment.LayoutAdapter.PromotionViewHolder paramPromotionViewHolder, Object paramObject)
  {
    paramPromotionViewHolder.mIcon = ((SmartImageView)paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
    paramPromotionViewHolder.mName = ((TextView)paramFinder.findRequiredView(paramObject, 2131492928, "field 'mName'"));
    paramPromotionViewHolder.mPlayingCount = ((TextView)paramFinder.findRequiredView(paramObject, 2131493482, "field 'mPlayingCount'"));
    paramPromotionViewHolder.mDownload = ((NewGameDownloadButton)paramFinder.findRequiredView(paramObject, 2131492916, "field 'mDownload'"));
    paramPromotionViewHolder.mDesc = ((TextView)paramFinder.findRequiredView(paramObject, 2131493481, "field 'mDesc'"));
  }

  public static void reset(GameLayoutFragment.LayoutAdapter.PromotionViewHolder paramPromotionViewHolder)
  {
    paramPromotionViewHolder.mIcon = null;
    paramPromotionViewHolder.mName = null;
    paramPromotionViewHolder.mPlayingCount = null;
    paramPromotionViewHolder.mDownload = null;
    paramPromotionViewHolder.mDesc = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.GameLayoutFragment.LayoutAdapter.PromotionViewHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */