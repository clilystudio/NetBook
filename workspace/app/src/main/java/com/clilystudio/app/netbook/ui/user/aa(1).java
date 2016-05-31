package com.clilystudio.app.netbook.ui.user;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aa extends ZssqFragmentPagerAdapter {
    public aa(PayVoucherActivity paramPayVoucherActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        PayVoucherActivity.a(paramPayVoucherActivity).add(0, paramPayVoucherActivity.a(0));
        PayVoucherActivity.a(paramPayVoucherActivity).add(1, paramPayVoucherActivity.a(1));
        PayVoucherActivity.a(paramPayVoucherActivity).add(2, paramPayVoucherActivity.a(2));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        for (int i = 0; i < 3; i++) {
            Fragment localFragment = (Fragment) PayVoucherActivity.a(paramPayVoucherActivity).get(i);
            if (!localFragment.isAdded())
                localFragmentTransaction.add(PayVoucherActivity.b_initContentView(paramPayVoucherActivity).getId(), localFragment, paramPayVoucherActivity.b[i]);
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment a(int paramInt) {
        return (Fragment) PayVoucherActivity.a(this.a).get(paramInt);
    }

    protected final String b(int paramInt) {
        return this.a.b[paramInt];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return this.a.b[paramInt];
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aa
 * JD-Core Version:    0.6.2
 */