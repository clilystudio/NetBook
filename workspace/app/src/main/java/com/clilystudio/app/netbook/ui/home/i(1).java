package com.clilystudio.app.netbook.ui.home;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import java.util.List;

final class i extends ZssqFragmentPagerAdapter {
    private String[] a = {"homeTag0", "homeTag1", "homeTag2"};

    public i(HomeActivity paramHomeActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        HomeActivity.b_initContentView(paramHomeActivity).add(paramHomeActivity.a(this.a[0]));
        List localList = HomeActivity.b_initContentView(paramHomeActivity);
        String str = this.a[1];
        HomeTopicFragment localHomeTopicFragment = (HomeTopicFragment) paramHomeActivity.getSupportFragmentManager().findFragmentByTag(str);
        if (localHomeTopicFragment == null)
            localHomeTopicFragment = HomeTopicFragment.b();
        localList.add(localHomeTopicFragment);
        HomeActivity.b_initContentView(paramHomeActivity).add(paramHomeActivity.g(this.a[2]));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        while (i < 3) {
            Fragment localFragment = (Fragment) HomeActivity.b_initContentView(paramHomeActivity).get(i);
            if (!localFragment.isAdded())
                localFragmentTransaction.add(HomeActivity.c_initContentView(paramHomeActivity).getId(), localFragment, this.a[i]);
            i++;
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment a(int paramInt) {
        return (Fragment) HomeActivity.b_initContentView(this.b).get(paramInt);
    }

    protected final String b(int paramInt) {
        return this.a[paramInt];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return this.b.getResources().getStringArray(2131361797)[paramInt];
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.i
 * JD-Core Version:    0.6.2
 */