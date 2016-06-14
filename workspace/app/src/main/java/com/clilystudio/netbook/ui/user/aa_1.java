package com.clilystudio.netbook.ui.user;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aa extends ZssqFragmentPagerAdapter {
    private /* synthetic */ PayVoucherActivity a;

    public aa(PayVoucherActivity payVoucherActivity, FragmentManager fragmentManager) {
        this.a = payVoucherActivity;
        super(fragmentManager);
        PayVoucherActivity.a(payVoucherActivity).add(0, payVoucherActivity.a(0));
        PayVoucherActivity.a(payVoucherActivity).add(1, payVoucherActivity.a(1));
        PayVoucherActivity.a(payVoucherActivity).add(2, payVoucherActivity.a(2));
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        for (int i = 0; i < 3; ++i) {
            Fragment fragment = (Fragment) PayVoucherActivity.a(payVoucherActivity).get(i);
            if (fragment.isAdded()) continue;
            fragmentTransaction.add(PayVoucherActivity.b(payVoucherActivity).getId(), fragment, payVoucherActivity.b[i]);
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n) {
        return (Fragment) PayVoucherActivity.a(this.a).get(n);
    }

    @Override
    protected final String b(int n) {
        return this.a.b[n];
    }

    @Override
    public final int getCount() {
        return 3;
    }

    @Override
    public final CharSequence getPageTitle(int n) {
        return this.a.b[n];
    }
}
