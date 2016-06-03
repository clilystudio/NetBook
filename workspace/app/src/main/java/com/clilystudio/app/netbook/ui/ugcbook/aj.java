package com.clilystudio.app.netbook.ui.ugcbook;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aj extends ZssqFragmentPagerAdapter {
    private String[] a = {"ugcTag0", "ugcTag1", "ugcTag2"};

    public aj(UGCMainActivity paramUGCMainActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        UGCMainActivity.d_setRight(paramUGCMainActivity).add(0, paramUGCMainActivity.a(this.a[0], "collectorCount", "last-seven-days"));
        UGCMainActivity.d_setRight(paramUGCMainActivity).add(1, paramUGCMainActivity.a(this.a[1], "created", "all"));
        UGCMainActivity.d_setRight(paramUGCMainActivity).add(2, paramUGCMainActivity.a(this.a[2], "collectorCount", "all"));
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        for (int i = 0; i < 3; i++) {
            Fragment localFragment = (Fragment) UGCMainActivity.d_setRight(paramUGCMainActivity).get(i);
            if (!localFragment.isAdded())
                localFragmentTransaction.add(UGCMainActivity.f_setTitle(paramUGCMainActivity).getId(), localFragment, this.a[i]);
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment getFragment(int position) {
        return (Fragment) UGCMainActivity.d_setRight(this.b).get(position);
    }

    protected final String getTag(int position) {
        return this.a[position];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return this.b.getResources().getStringArray(2131361810)[paramInt];
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.aj
 * JD-Core Version:    0.6.2
 */