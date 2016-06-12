package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

final class ch extends ZssqFragmentPagerAdapter {

    private SimpleTabActivity a;

    public ch(SimpleTabActivity SimpleTabActivity1, FragmentManager FragmentManager2) {
        super(FragmentManager2);
        FragmentTransaction FragmentTransaction5;
        int int4;
        int int3;

        int3 = 0;
        a = SimpleTabActivity1;
        for (int4 = 0; int4 < SimpleTabActivity1.b; ++int4)
            SimpleTabActivity.a(SimpleTabActivity1).add(int4, SimpleTabActivity1.e(int4));
        FragmentTransaction5 = FragmentManager2.beginTransaction();
        while (int3 < SimpleTabActivity1.b) {
            Fragment Fragment8 = (Fragment) SimpleTabActivity.a(SimpleTabActivity1).get(int3);

            if (!Fragment8.isAdded())
                FragmentTransaction5.add(SimpleTabActivity.b(SimpleTabActivity1).getId(), Fragment8, SimpleTabActivity1.c[int3]);
            ++int3;
        }
        if (!FragmentTransaction5.isEmpty()) {
            FragmentTransaction5.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    public final Fragment a(int int1) {
        return (Fragment) SimpleTabActivity.a(a).get(int1);
    }

    protected final String b(int int1) {
        return a.c[int1];
    }

    public final int getCount() {
        return a.b;
    }

    public final CharSequence getPageTitle(int int1) {
        return (CharSequence) a.getResources().getStringArray(2131361798)[int1];
    }
}
