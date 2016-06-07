package com.clilystudio.netbook.ui.game;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class an extends ZssqFragmentPagerAdapter
{
  private String[] a = { "tabTag0", "tabTag1", "tabTag2", "tabTag3" };

  public an(GameTabActivity paramGameTabActivity, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    List localList1 = GameTabActivity.a(paramGameTabActivity);
    String str1 = this.a[0];
    GameLayoutFragment localGameLayoutFragment = (GameLayoutFragment)paramGameTabActivity.getSupportFragmentManager().findFragmentByTag(str1);
    if (localGameLayoutFragment == null)
      localGameLayoutFragment = new GameLayoutFragment();
    localList1.add(0, localGameLayoutFragment);
    List localList2 = GameTabActivity.a(paramGameTabActivity);
    String str2 = this.a[1];
    GameRankListFragment localGameRankListFragment = (GameRankListFragment)paramGameTabActivity.getSupportFragmentManager().findFragmentByTag(str2);
    if (localGameRankListFragment == null)
      localGameRankListFragment = new GameRankListFragment();
    localList2.add(1, localGameRankListFragment);
    List localList3 = GameTabActivity.a(paramGameTabActivity);
    String str3 = this.a[2];
    GameCatListFragment localGameCatListFragment = (GameCatListFragment)paramGameTabActivity.getSupportFragmentManager().findFragmentByTag(str3);
    if (localGameCatListFragment == null)
      localGameCatListFragment = new GameCatListFragment();
    localList3.add(2, localGameCatListFragment);
    List localList4 = GameTabActivity.a(paramGameTabActivity);
    String str4 = this.a[3];
    GameMicroFragment localGameMicroFragment = (GameMicroFragment)paramGameTabActivity.getSupportFragmentManager().findFragmentByTag(str4);
    if (localGameMicroFragment == null)
      localGameMicroFragment = new GameMicroFragment();
    localList4.add(3, localGameMicroFragment);
    FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
    while (i < 4)
    {
      Fragment localFragment = (Fragment)GameTabActivity.a(paramGameTabActivity).get(i);
      if (!localFragment.isAdded())
        localFragmentTransaction.add(GameTabActivity.b(paramGameTabActivity).getId(), localFragment, this.a[i]);
      i++;
    }
    if (!localFragmentTransaction.isEmpty())
    {
      localFragmentTransaction.commit();
      paramFragmentManager.executePendingTransactions();
    }
  }

  public final Fragment a(int paramInt)
  {
    return (Fragment)GameTabActivity.a(this.b).get(paramInt);
  }

  protected final String b(int paramInt)
  {
    return this.a[paramInt];
  }

  public final int getCount()
  {
    return 4;
  }

  public final CharSequence getPageTitle(int paramInt)
  {
    return this.b.getResources().getStringArray(2131361796)[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.an
 * JD-Core Version:    0.6.0
 */