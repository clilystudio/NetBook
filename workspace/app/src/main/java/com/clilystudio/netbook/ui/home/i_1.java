package com.clilystudio.netbook.ui.home;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import java.util.List;

final class i
        extends ZssqFragmentPagerAdapter {
    private String[] a;
    private /* synthetic */ HomeActivity b;

    public i(HomeActivity homeActivity, FragmentManager fragmentManager) {
        int n2 = 0;
        this.b = homeActivity;
        super(fragmentManager);
        this.a = new String[]{"homeTag0", "homeTag1", "homeTag2"};
        HomeActivity.b(homeActivity).add(homeActivity.a(this.a[0]));
        List list = HomeActivity.b(homeActivity);
        String string = this.a[1];
        HomeTopicFragment homeTopicFragment = (HomeTopicFragment) homeActivity.getSupportFragmentManager().findFragmentByTag(string);
        if (homeTopicFragment == null) {
            homeTopicFragment = HomeTopicFragment.b();
        }
        list.add(homeTopicFragment);
        HomeActivity.b(homeActivity).add(homeActivity.g(this.a[2]));
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        while (n2 < 3) {
            Fragment fragment = (Fragment) HomeActivity.b(homeActivity).get(n2);
            if (!fragment.isAdded()) {
                fragmentTransaction.add(HomeActivity.c(homeActivity).getId(), fragment, this.a[n2]);
            }
            ++n2;
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n2) {
        return (Fragment) HomeActivity.b(this.b).get(n2);
    }

    @Override
    protected final String b(int n2) {
        return this.a[n2];
    }

    @Override
    public final int getCount() {
        return 3;
    }

    @Override
    public final CharSequence getPageTitle(int n2) {
        return this.b.getResources().getStringArray(2131361797)[n2];
    }
}
