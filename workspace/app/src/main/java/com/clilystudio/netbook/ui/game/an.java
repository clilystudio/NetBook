package com.clilystudio.netbook.ui.game;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

import java.util.List;

final class an extends ZssqFragmentPagerAdapter {

    private String[] a;
    private GameTabActivity b;
    public an(GameTabActivity GameTabActivity1, FragmentManager FragmentManager2) {
        super(FragmentManager2);
        FragmentTransaction FragmentTransaction16;
        GameMicroFragment GameMicroFragment15;
        String String14;
        List List13;
        GameCatListFragment GameCatListFragment12;
        String String11;
        List List10;
        GameRankListFragment GameRankListFragment9;
        String String8;
        List List7;
        GameLayoutFragment GameLayoutFragment6;
        String String5;
        List List4;
        int int3;

        int3 = 0;
        b = GameTabActivity1;
        a = new String[]{"tabTag0", "tabTag1", "tabTag2", "tabTag3"};
        List4 = GameTabActivity.a(GameTabActivity1);
        String5 = a[0];
        GameLayoutFragment6 = (GameLayoutFragment) GameTabActivity1.getSupportFragmentManager().findFragmentByTag(String5);
        if (GameLayoutFragment6 == null)
            GameLayoutFragment6 = new GameLayoutFragment();
        List4.add(0, GameLayoutFragment6);
        List7 = GameTabActivity.a(GameTabActivity1);
        String8 = a[1];
        GameRankListFragment9 = (GameRankListFragment) GameTabActivity1.getSupportFragmentManager().findFragmentByTag(String8);
        if (GameRankListFragment9 == null)
            GameRankListFragment9 = new GameRankListFragment();
        List7.add(1, GameRankListFragment9);
        List10 = GameTabActivity.a(GameTabActivity1);
        String11 = a[2];
        GameCatListFragment12 = (GameCatListFragment) GameTabActivity1.getSupportFragmentManager().findFragmentByTag(String11);
        if (GameCatListFragment12 == null)
            GameCatListFragment12 = new GameCatListFragment();
        List10.add(2, GameCatListFragment12);
        List13 = GameTabActivity.a(GameTabActivity1);
        String14 = a[3];
        GameMicroFragment15 = (GameMicroFragment) GameTabActivity1.getSupportFragmentManager().findFragmentByTag(String14);
        if (GameMicroFragment15 == null)
            GameMicroFragment15 = new GameMicroFragment();
        List13.add(3, GameMicroFragment15);
        FragmentTransaction16 = FragmentManager2.beginTransaction();
        while (int3 < 4) {
            Fragment Fragment19 = (Fragment) GameTabActivity.a(GameTabActivity1).get(int3);

            if (!Fragment19.isAdded())
                FragmentTransaction16.add(GameTabActivity.b(GameTabActivity1).getId(), Fragment19, a[int3]);
            ++int3;
        }
        if (!FragmentTransaction16.isEmpty()) {
            FragmentTransaction16.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    public final Fragment a(int int1) {
        return (Fragment) GameTabActivity.a(b).get(int1);
    }

    protected final String b(int int1) {
        return a[int1];
    }

    public final int getCount() {
        return 4;
    }

    public final CharSequence getPageTitle(int int1) {
        return (CharSequence) b.getResources().getStringArray(2131361796)[int1];
    }
}
