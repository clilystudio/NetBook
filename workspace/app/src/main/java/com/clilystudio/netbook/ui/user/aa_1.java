package com.clilystudio.netbook.ui.user;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aa extends ZssqFragmentPagerAdapter {

    private PayVoucherActivity a;

    public aa(PayVoucherActivity PayVoucherActivity1, FragmentManager FragmentManager2) {
        super(FragmentManager2);
        int int4;
        FragmentTransaction FragmentTransaction3;

        a = PayVoucherActivity1;
        PayVoucherActivity.a(PayVoucherActivity1).add(0, PayVoucherActivity1.a(0));
        PayVoucherActivity.a(PayVoucherActivity1).add(1, PayVoucherActivity1.a(1));
        PayVoucherActivity.a(PayVoucherActivity1).add(2, PayVoucherActivity1.a(2));
        FragmentTransaction3 = FragmentManager2.beginTransaction();
        for (int4 = 0; int4 < 3; ++int4) {
            Fragment Fragment7 = (Fragment) PayVoucherActivity.a(PayVoucherActivity1).get(int4);

            if (!Fragment7.isAdded())
                FragmentTransaction3.add(PayVoucherActivity.b(PayVoucherActivity1).getId(), Fragment7, PayVoucherActivity1.b[int4]);
        }
        if (!FragmentTransaction3.isEmpty()) {
            FragmentTransaction3.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    public final Fragment a(int int1) {
        return (Fragment) PayVoucherActivity.a(a).get(int1);
    }

    protected final String b(int int1) {
        return a.b[int1];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int int1) {
        return (CharSequence) a.b[int1];
    }
}
