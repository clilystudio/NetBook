package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class av
        extends ZssqFragmentPagerAdapter {
    private String[] a;
    private /* synthetic */ BookCategoryListActivity b;

    public av(BookCategoryListActivity bookCategoryListActivity, FragmentManager fragmentManager) {
        this.b = bookCategoryListActivity;
        super(fragmentManager);
        this.a = new String[]{"new", "hot", "reputation", "over"};
        BookCategoryListActivity.b(bookCategoryListActivity).add(0, bookCategoryListActivity.a(this.a[0]));
        BookCategoryListActivity.b(bookCategoryListActivity).add(1, bookCategoryListActivity.a(this.a[1]));
        BookCategoryListActivity.b(bookCategoryListActivity).add(2, bookCategoryListActivity.a(this.a[2]));
        BookCategoryListActivity.b(bookCategoryListActivity).add(3, bookCategoryListActivity.a(this.a[3]));
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        for (int i = 0; i < 4; ++i) {
            Fragment fragment = (Fragment) BookCategoryListActivity.b(bookCategoryListActivity).get(i);
            if (fragment.isAdded()) continue;
            fragmentTransaction.add(BookCategoryListActivity.c(bookCategoryListActivity).getId(), fragment, this.a[i]);
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n) {
        return (Fragment) BookCategoryListActivity.b(this.b).get(n);
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
        return BookCategoryListActivity.d(this.b)[n];
    }
}
