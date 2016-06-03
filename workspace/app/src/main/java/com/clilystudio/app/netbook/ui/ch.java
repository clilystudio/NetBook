package com.clilystudio.app.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.ui.home.ZssqFragmentPagerAdapter;

final class ch extends ZssqFragmentPagerAdapter {
    public ch(SimpleTabActivity paramSimpleTabActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        for (int j = 0; j < paramSimpleTabActivity.b; j++)
            SimpleTabActivity.a(paramSimpleTabActivity).add(j, paramSimpleTabActivity.e(j));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        while (i < paramSimpleTabActivity.b) {
            Fragment localFragment = (Fragment) SimpleTabActivity.a(paramSimpleTabActivity).get(i);
            if (!localFragment.isAdded())
                localFragmentTransaction.add(SimpleTabActivity.b_initContentView(paramSimpleTabActivity).getId(), localFragment, paramSimpleTabActivity.c[i]);
            i++;
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment getFragment(int position) {
        return (Fragment) SimpleTabActivity.a(this.a).get(position);
    }

    protected final String getTag(int position) {
        return this.a.c[position];
    }

    public final int getCount() {
        return this.a.b;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return this.a.getResources().getStringArray(2131361798)[paramInt];
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ch
 * JD-Core Version:    0.6.2
 */