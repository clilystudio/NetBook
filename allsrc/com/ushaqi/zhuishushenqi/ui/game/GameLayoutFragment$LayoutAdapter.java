package com.ushaqi.zhuishushenqi.ui.game;

import android.support.v7.widget.ah;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.Game.MainPromoInfo;
import com.ushaqi.zhuishushenqi.model.GameGroupItem;
import com.ushaqi.zhuishushenqi.model.GameLayoutRoot.ModuleLayout;
import com.ushaqi.zhuishushenqi.model.GameLayoutRoot.ModuleLayout.ActivityItem;
import com.ushaqi.zhuishushenqi.model.ModuleType;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.widget.GameItemSection;
import com.ushaqi.zhuishushenqi.widget.NewGameDownloadButton;
import java.util.List;

final class GameLayoutFragment$LayoutAdapter extends ah
{
  GameLayoutFragment$LayoutAdapter(GameLayoutFragment paramGameLayoutFragment)
  {
  }

  private GameLayoutRoot.ModuleLayout d(int paramInt)
  {
    List localList = GameLayoutFragment.c(this.a);
    if (GameLayoutFragment.b(this.a) != null)
      paramInt--;
    return (GameLayoutRoot.ModuleLayout)localList.get(paramInt);
  }

  public final int a()
  {
    if (GameLayoutFragment.c(this.a) != null)
    {
      int i = GameLayoutFragment.c(this.a).size();
      if (GameLayoutFragment.b(this.a) != null)
        i++;
      return i;
    }
    return 0;
  }

  public final int a(int paramInt)
  {
    if ((GameLayoutFragment.b(this.a) != null) && (paramInt == 0))
      return 0;
    GameLayoutRoot.ModuleLayout localModuleLayout = d(paramInt);
    ModuleType localModuleType = localModuleLayout.getType();
    if (localModuleType == ModuleType.GAME_GROUP)
      return 1 + (localModuleLayout.getGameGroup().getRowCount() << 4);
    if (localModuleType == ModuleType.ACTIVITY)
      return 2;
    if (localModuleType == ModuleType.AOYOU)
      return 3;
    return -1;
  }

  public final ay a(ViewGroup paramViewGroup, int paramInt)
  {
    N localN = a.b(paramInt);
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.a.getActivity());
    switch (localN.a())
    {
    default:
      return null;
    case 0:
      return new GameLayoutFragment.LayoutAdapter.PromotionViewHolder(this, localLayoutInflater.inflate(2130903224, paramViewGroup, false));
    case 1:
      GameItemSection localGameItemSection2 = (GameItemSection)localLayoutInflater.inflate(2130903246, paramViewGroup, false);
      localGameItemSection2.a(localN.b());
      return new M(this, localGameItemSection2);
    case 2:
      return new K(this, localLayoutInflater.inflate(2130903244, paramViewGroup, false));
    case 3:
    }
    GameItemSection localGameItemSection1 = (GameItemSection)localLayoutInflater.inflate(2130903246, paramViewGroup, false);
    localGameItemSection1.a((2 + GameLayoutFragment.a) / 3);
    return new M(this, localGameItemSection1);
  }

  public final void a(ay paramay, int paramInt)
  {
    switch (a.b(a(paramInt)).a())
    {
    default:
      return;
    case 0:
      GameLayoutFragment.LayoutAdapter.PromotionViewHolder localPromotionViewHolder = (GameLayoutFragment.LayoutAdapter.PromotionViewHolder)paramay;
      localPromotionViewHolder.mName.setText(GameLayoutFragment.b(this.a).getName());
      localPromotionViewHolder.mDownload.setGame(GameLayoutFragment.b(this.a));
      localPromotionViewHolder.mDownload.a(GameLayoutFragment.b(this.a).getDownloadStatus());
      TextView localTextView = localPromotionViewHolder.mPlayingCount;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(GameLayoutFragment.b(this.a).getMainPromoInfo().getPlayingCount());
      localTextView.setText(String.format("%d人在玩", arrayOfObject));
      localPromotionViewHolder.mDesc.setText(GameLayoutFragment.b(this.a).getMainPromoInfo().getDesc());
      localPromotionViewHolder.mIcon.setImageUrl(GameLayoutFragment.b(this.a).getIcon());
      localPromotionViewHolder.mIcon.setOnClickListener(new I(this));
      return;
    case 1:
      GameLayoutRoot.ModuleLayout localModuleLayout3 = d(paramInt);
      ((GameItemSection)paramay.a).a(localModuleLayout3);
      paramay.a.findViewById(2131493432).setOnClickListener(new J(this, localModuleLayout3));
      return;
    case 2:
      K localK = (K)paramay;
      GameLayoutRoot.ModuleLayout localModuleLayout2 = d(paramInt);
      SmartImageView localSmartImageView = (SmartImageView)localK.a.findViewById(2131493025);
      GameLayoutRoot.ModuleLayout.ActivityItem localActivityItem = localModuleLayout2.getActivity();
      localSmartImageView.setImageUrl(localActivityItem.getBannerImage());
      localSmartImageView.setOnClickListener(new L(localK, localActivityItem));
      return;
    case 3:
    }
    GameLayoutRoot.ModuleLayout localModuleLayout1 = d(paramInt);
    ((GameItemSection)paramay.a).b(localModuleLayout1);
    paramay.a.findViewById(2131493432).setVisibility(8);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.GameLayoutFragment.LayoutAdapter
 * JD-Core Version:    0.6.0
 */