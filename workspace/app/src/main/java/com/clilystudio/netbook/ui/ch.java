package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class ch extends ZssqFragmentPagerAdapter {
    private /* synthetic */ SimpleTabActivity a;

    public ch(SimpleTabActivity simpleTabActivity, FragmentManager fragmentManager) {
        int n = 0;
        this.a = simpleTabActivity;
        super(fragmentManager);
        for (int i = 0; i < simpleTabActivity.b; ++i) {
            SimpleTabActivity.a(simpleTabActivity).add(i, simpleTabActivity.e(i));
        }
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        while (n < simpleTabActivity.b) {
            Fragment fragment = (Fragment) SimpleTabActivity.a(simpleTabActivity).get(n);
            if (!fragment.isAdded()) {
                fragmentTransaction.add(SimpleTabActivity.b(simpleTabActivity).getId(), fragment, simpleTabActivity.c[n]);
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
        return (Fragment) SimpleTabActivity.a(this.a).get(n);
    }

    @Override
    protected final String b(int n) {
        return this.a.c[n];
    }

    @Override
    public final int getCount() {
        return this.a.b;
    }

    @Override
    public final CharSequence getPageTitle(int n) {
        return this.a.getResources().getStringArray(2131361798)[n];
    }
}
