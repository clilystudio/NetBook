package com.clilystudio.netbook.ui.home;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import java.util.List;

final class i extends ZssqFragmentPagerAdapter {

    private String[] a;
    private HomeActivity b;
    public i(HomeActivity HomeActivity1, FragmentManager FragmentManager2) {
        super(FragmentManager2);
        FragmentTransaction FragmentTransaction10;
        HomeTopicFragment HomeTopicFragment7;
        String String6;
        List List5;
        int int3;

        int3 = 0;
        b = HomeActivity1;
        a = new String[]{"homeTag0", "homeTag1", "homeTag2"};
        HomeActivity.b(HomeActivity1).add(HomeActivity1.a(a[0]));
        List5 = HomeActivity.b(HomeActivity1);
        String6 = a[1];
        HomeTopicFragment7 = (HomeTopicFragment) HomeActivity1.getSupportFragmentManager().findFragmentByTag(String6);
        if (HomeTopicFragment7 == null)
            HomeTopicFragment7 = HomeTopicFragment.b();
        List5.add(HomeTopicFragment7);
        HomeActivity.b(HomeActivity1).add(HomeActivity1.g(a[2]));
        FragmentTransaction10 = FragmentManager2.beginTransaction();
        while (int3 < 3) {
            Fragment Fragment13 = (Fragment) HomeActivity.b(HomeActivity1).get(int3);

            if (!Fragment13.isAdded())
                FragmentTransaction10.add(HomeActivity.c(HomeActivity1).getId(), Fragment13, a[int3]);
            ++int3;
        }
        if (!FragmentTransaction10.isEmpty()) {
            FragmentTransaction10.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    public final Fragment a(int int1) {
        return (Fragment) HomeActivity.b(b).get(int1);
    }

    protected final String b(int int1) {
        return a[int1];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int int1) {
        return (CharSequence) b.getResources().getStringArray(2131361797)[int1];
    }
}
