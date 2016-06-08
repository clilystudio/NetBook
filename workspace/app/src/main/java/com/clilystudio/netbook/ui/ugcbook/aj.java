package com.clilystudio.netbook.ui.ugcbook;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aj extends ZssqFragmentPagerAdapter {
    private String[] a = {"ugcTag0", "ugcTag1", "ugcTag2"};

    public aj(UGCMainActivity paramUGCMainActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        UGCMainActivity.e(paramUGCMainActivity).add(0, paramUGCMainActivity.a(this.a[0], "collectorCount", "last-seven-days"));
        UGCMainActivity.e(paramUGCMainActivity).add(1, paramUGCMainActivity.a(this.a[1], "created", "all"));
        UGCMainActivity.e(paramUGCMainActivity).add(2, paramUGCMainActivity.a(this.a[2], "collectorCount", "all"));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        for (int i = 0; i < 3; i++) {
            Fragment localFragment = (Fragment) UGCMainActivity.e(paramUGCMainActivity).get(i);
            if (localFragment.isAdded())
                continue;
            localFragmentTransaction.add(UGCMainActivity.f(paramUGCMainActivity).getId(), localFragment, this.a[i]);
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment a(int paramInt) {
        return (Fragment) UGCMainActivity.e(this.b).get(paramInt);
    }

    protected final String b(int paramInt) {
        return this.a[paramInt];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return this.b.getResources().getStringArray(2131361810)[paramInt];
    }
}

