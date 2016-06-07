package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ah;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout.ActivityItem;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameMicroItemSection;
import java.util.List;

final class GameMicroFragment$LayoutAdapter extends ah
{
  GameMicroFragment$LayoutAdapter(GameMicroFragment paramGameMicroFragment)
  {
  }

  private GameLayoutRoot.ModuleLayout d(int paramInt)
  {
    List localList = GameMicroFragment.d(this.a);
    if (GameMicroFragment.a(this.a) != null)
      paramInt--;
    return (GameLayoutRoot.ModuleLayout)localList.get(paramInt);
  }

  public final int a()
  {
    if (GameMicroFragment.d(this.a) != null)
    {
      int i = GameMicroFragment.d(this.a).size();
      if (GameMicroFragment.a(this.a) != null)
        i++;
      return i;
    }
    return 0;
  }

  public final int a(int paramInt)
  {
    if ((GameMicroFragment.a(this.a) != null) && (paramInt == 0))
      return 0;
    GameLayoutRoot.ModuleLayout localModuleLayout = d(paramInt);
    ModuleType localModuleType = localModuleLayout.getType();
    if (localModuleType == ModuleType.GAME_GROUP)
      return 1 + (localModuleLayout.getGameGroup().getRowCount() << 4);
    if (localModuleType == ModuleType.ACTIVITY)
      return 2;
    if (localModuleType == ModuleType.LOCAL)
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
      return new GameMicroFragment.LayoutAdapter.PromotionViewPager(this, localLayoutInflater.inflate(2130903225, paramViewGroup, false));
    case 1:
      GameMicroItemSection localGameMicroItemSection2 = (GameMicroItemSection)localLayoutInflater.inflate(2130903247, paramViewGroup, false);
      localGameMicroItemSection2.a(localN.b());
      return new ab(this, localGameMicroItemSection2);
    case 2:
      return new Z(this, localLayoutInflater.inflate(2130903244, paramViewGroup, false));
    case 3:
    }
    GameMicroItemSection localGameMicroItemSection1 = (GameMicroItemSection)localLayoutInflater.inflate(2130903247, paramViewGroup, false);
    if (GameMicroFragment.b(this.a) == 0)
      localGameMicroItemSection1.a();
    while (true)
    {
      return new ab(this, localGameMicroItemSection1);
      localGameMicroItemSection1.a(1);
    }
  }

  public final void a(ay paramay, int paramInt)
  {
    switch (a.b(a(paramInt)).a())
    {
    default:
      return;
    case 0:
      ((GameMicroFragment.LayoutAdapter.PromotionViewPager)paramay).q();
      return;
    case 1:
      GameLayoutRoot.ModuleLayout localModuleLayout2 = d(paramInt);
      ((GameMicroItemSection)paramay.a).a(localModuleLayout2);
      paramay.a.findViewById(2131493432).setOnClickListener(new X(this, localModuleLayout2));
      return;
    case 2:
      Z localZ = (Z)paramay;
      GameLayoutRoot.ModuleLayout localModuleLayout1 = d(paramInt);
      SmartImageView localSmartImageView = (SmartImageView)localZ.a.findViewById(2131493025);
      GameLayoutRoot.ModuleLayout.ActivityItem localActivityItem = localModuleLayout1.getActivity();
      localSmartImageView.setImageUrl(localActivityItem.getBannerImage());
      localSmartImageView.setOnClickListener(new aa(localZ, localActivityItem));
      return;
    case 3:
    }
    GameMicroItemSection localGameMicroItemSection = (GameMicroItemSection)paramay.a;
    localGameMicroItemSection.setHasPlayed(true);
    localGameMicroItemSection.a(GameMicroFragment.c(this.a));
    View localView = paramay.a.findViewById(2131493432);
    if (GameMicroFragment.b(this.a) > 3)
    {
      localView.setVisibility(0);
      localView.setOnClickListener(new Y(this));
      return;
    }
    localView.setVisibility(8);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.GameMicroFragment.LayoutAdapter
 * JD-Core Version:    0.6.0
 */