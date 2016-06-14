package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aS extends ZssqFragmentPagerAdapter {
    private String[] a;
    private /* synthetic */ BookRankMainActivity b;

    public aS(BookRankMainActivity bookRankMainActivity, FragmentManager fragmentManager) {
        this.b = bookRankMainActivity;
        super(fragmentManager);
        this.a = new String[]{"weekly", "monthly", "all"};
        for (int i = 0; i < 3; ++i) {
            BookRankMainActivity.b(bookRankMainActivity).add(i, BookRankMainActivity.a(bookRankMainActivity, BookRankMainActivity.a(bookRankMainActivity)[i], this.a[i], this.a[i]));
        }
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        for (int j = 0; j < 3; ++j) {
            Fragment fragment = (Fragment) BookRankMainActivity.b(bookRankMainActivity).get(j);
            if (fragment.isAdded()) continue;
            fragmentTransaction.add(BookRankMainActivity.c(bookRankMainActivity).getId(), fragment, this.a[j]);
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n) {
        return (Fragment) BookRankMainActivity.b(this.b).get(n);
    }

    @Override
    protected final String b(int n) {
        return this.a[n];
    }

    @Override
    public final int getCount() {
        return 3;
    }
}
