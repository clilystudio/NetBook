package com.clilystudio.netbook.ui.ugcbook;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class aj extends ZssqFragmentPagerAdapter {
    private String[] a;
    private /* synthetic */ UGCMainActivity b;

    public aj(UGCMainActivity uGCMainActivity, FragmentManager fragmentManager) {
        this.b = uGCMainActivity;
        super(fragmentManager);
        this.a = new String[]{"ugcTag0", "ugcTag1", "ugcTag2"};
        UGCMainActivity.e(uGCMainActivity).add(0, uGCMainActivity.a(this.a[0], "collectorCount", "last-seven-days"));
        UGCMainActivity.e(uGCMainActivity).add(1, uGCMainActivity.a(this.a[1], "created", "all"));
        UGCMainActivity.e(uGCMainActivity).add(2, uGCMainActivity.a(this.a[2], "collectorCount", "all"));
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        for (int i = 0; i < 3; ++i) {
            Fragment fragment = (Fragment) UGCMainActivity.e(uGCMainActivity).get(i);
            if (fragment.isAdded()) continue;
            fragmentTransaction.add(UGCMainActivity.f(uGCMainActivity).getId(), fragment, this.a[i]);
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n) {
        return (Fragment) UGCMainActivity.e(this.b).get(n);
    }

    @Override
    protected final String b(int n) {
        return this.a[n];
    }

    @Override
    public final int getCount() {
        return 3;
    }

    @Override
    public final CharSequence getPageTitle(int n) {
        return this.b.getResources().getStringArray(2131361810)[n];
    }
}
