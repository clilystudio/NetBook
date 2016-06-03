package com.clilystudio.app.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.ui.home.ZssqFragmentPagerAdapter;

final class av extends ZssqFragmentPagerAdapter {
    private String[] a = {"new", "hot", "reputation", "over"};

    public av(BookCategoryListActivity paramBookCategoryListActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        BookCategoryListActivity.b_initContentView(paramBookCategoryListActivity).add(0, paramBookCategoryListActivity.a(this.a[0]));
        BookCategoryListActivity.b_initContentView(paramBookCategoryListActivity).add(1, paramBookCategoryListActivity.a(this.a[1]));
        BookCategoryListActivity.b_initContentView(paramBookCategoryListActivity).add(2, paramBookCategoryListActivity.a(this.a[2]));
        BookCategoryListActivity.b_initContentView(paramBookCategoryListActivity).add(3, paramBookCategoryListActivity.a(this.a[3]));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        for (int i = 0; i < 4; i++) {
            Fragment localFragment = (Fragment) BookCategoryListActivity.b_initContentView(paramBookCategoryListActivity).get(i);
            if (!localFragment.isAdded())
                localFragmentTransaction.add(BookCategoryListActivity.c_initContentView(paramBookCategoryListActivity).getId(), localFragment, this.a[i]);
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment getFragment(int position) {
        return (Fragment) BookCategoryListActivity.b_initContentView(this.b).get(position);
    }

    protected final String getTag(int position) {
        return this.a[position];
    }

    public final int getCount() {
        return 4;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return BookCategoryListActivity.d_setTitle(this.b)[paramInt];
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.av
 * JD-Core Version:    0.6.2
 */