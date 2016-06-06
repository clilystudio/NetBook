package com.clilystudio.app.netbook.ui.home;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.R;

import java.util.List;

final class i_HomePagerAdapter extends ZssqFragmentPagerAdapter {
    private String[] tags = {"homeTag0", "homeTag1"};
    private HomeActivity activity;

    public i_HomePagerAdapter(HomeActivity activity, FragmentManager manager) {
        super(manager);
        this.activity = activity;
        List<Fragment> fragmentList = this.activity.getFragmentList();

        HomeShelfFragment homeShelfFragment = (HomeShelfFragment) this.activity.getSupportFragmentManager().findFragmentByTag(this.tags[0]);
        if (homeShelfFragment == null) {
            homeShelfFragment = HomeShelfFragment.b();
        }
        fragmentList.add(homeShelfFragment);

        HomeTopicFragment homeTopicFragment = (HomeTopicFragment) this.activity.getSupportFragmentManager().findFragmentByTag(this.tags[1]);
        if (homeTopicFragment == null) {
            homeTopicFragment = HomeTopicFragment.b();
        }
        fragmentList.add(homeTopicFragment);

        FragmentTransaction transaction = manager.beginTransaction();
        for (int i = 0;i < tags.length; i++) {
            Fragment fragment = fragmentList.get(i);
            if (!fragment.isAdded()) {
                transaction.add(this.activity.getmViewPager().getId(), fragment, this.tags[i]);
            }
        }
        if (!transaction.isEmpty()) {
            transaction.commit();
            manager.executePendingTransactions();
        }
    }

    public final Fragment getFragment(int position) {
        return activity.getFragmentList().get(position);
    }

    protected final String getTag(int position) {
        return this.tags[position];
    }

    public final int getCount() {
        return tags.length;
    }

    public final CharSequence getPageTitle(int position) {
        return activity.getResources().getStringArray(R.array.home_tabs)[position];
    }
}
