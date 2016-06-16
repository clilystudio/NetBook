package com.clilystudio.netbook.ui.game;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

import java.util.List;

final class an extends ZssqFragmentPagerAdapter {
    private String[] a;
    private /* synthetic */ GameTabActivity b;

    public an(GameTabActivity gameTabActivity, FragmentManager fragmentManager) {
        int n = 0;
        this.b = gameTabActivity;
        super(fragmentManager);
        this.a = new String[]{"tabTag0", "tabTag1", "tabTag2", "tabTag3"};
        List list = GameTabActivity.a(gameTabActivity);
        String string = this.a[0];
        GameLayoutFragment gameLayoutFragment = (GameLayoutFragment) gameTabActivity.getSupportFragmentManager().findFragmentByTag(string);
        if (gameLayoutFragment == null) {
            gameLayoutFragment = new GameLayoutFragment();
        }
        list.add(0, gameLayoutFragment);
        List list2 = GameTabActivity.a(gameTabActivity);
        String string2 = this.a[1];
        GameRankListFragment gameRankListFragment = (GameRankListFragment) gameTabActivity.getSupportFragmentManager().findFragmentByTag(string2);
        if (gameRankListFragment == null) {
            gameRankListFragment = new GameRankListFragment();
        }
        list2.add(1, gameRankListFragment);
        List list3 = GameTabActivity.a(gameTabActivity);
        String string3 = this.a[2];
        GameCatListFragment gameCatListFragment = (GameCatListFragment) gameTabActivity.getSupportFragmentManager().findFragmentByTag(string3);
        if (gameCatListFragment == null) {
            gameCatListFragment = new GameCatListFragment();
        }
        list3.add(2, gameCatListFragment);
        List list4 = GameTabActivity.a(gameTabActivity);
        String string4 = this.a[3];
        GameMicroFragment gameMicroFragment = (GameMicroFragment) gameTabActivity.getSupportFragmentManager().findFragmentByTag(string4);
        if (gameMicroFragment == null) {
            gameMicroFragment = new GameMicroFragment();
        }
        list4.add(3, gameMicroFragment);
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        while (n < 4) {
            Fragment fragment = (Fragment) GameTabActivity.a(gameTabActivity).get(n);
            if (!fragment.isAdded()) {
                fragmentTransaction.add(GameTabActivity.b(gameTabActivity).getId(), fragment, this.a[n]);
            }
            ++n;
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n) {
        return (Fragment) GameTabActivity.a(this.b).get(n);
    }

    @Override
    protected final String b(int n) {
        return this.a[n];
    }

    @Override
    public final int getCount() {
        return 4;
    }

    @Override
    public final CharSequence getPageTitle(int n) {
        return this.b.getResources().getStringArray(R.array.game_center_tabs)[n];
    }
}
