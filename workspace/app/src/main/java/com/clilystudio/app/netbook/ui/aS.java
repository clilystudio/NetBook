package com.clilystudio.app.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aS extends ZssqFragmentPagerAdapter {
    private String[] a = {"weekly", "monthly", "all"};

    public aS(BookRankMainActivity paramBookRankMainActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        for (int i = 0; i < 3; i++)
            BookRankMainActivity.b(paramBookRankMainActivity).add(i, BookRankMainActivity.a(paramBookRankMainActivity, BookRankMainActivity.a(paramBookRankMainActivity)[i], this.a[i], this.a[i]));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        for (int j = 0; j < 3; j++) {
            Fragment localFragment = (Fragment) BookRankMainActivity.b(paramBookRankMainActivity).get(j);
            if (!localFragment.isAdded())
                localFragmentTransaction.add(BookRankMainActivity.c(paramBookRankMainActivity).getId(), localFragment, this.a[j]);
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment a(int paramInt) {
        return (Fragment) BookRankMainActivity.b(this.b).get(paramInt);
    }

    protected final String b(int paramInt) {
        return this.a[paramInt];
    }

    public final int getCount() {
        return 3;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aS
 * JD-Core Version:    0.6.2
 */