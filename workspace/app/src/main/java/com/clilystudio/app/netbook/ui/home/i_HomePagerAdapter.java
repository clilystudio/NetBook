package com.clilystudio.app.netbook.ui.home;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.app.netbook.R;

import java.util.List;

final class i_HomePagerAdapter extends ZssqFragmentPagerAdapter {
    private String[] tags = {"homeTag0", "homeTag1", "homeTag2"};
    private HomeActivity activity;

    public i_HomePagerAdapter(HomeActivity paramHomeActivity, FragmentManager paramFragmentManager) {
        super(paramFragmentManager);
        activity = paramHomeActivity;
        List<Fragment> localList = activity.getFragmentList();

        HomeShelfFragment localHomeShelfFragment = (HomeShelfFragment) activity.getSupportFragmentManager().findFragmentByTag(this.tags[0]);
        if (localHomeShelfFragment == null) {
            localHomeShelfFragment = HomeShelfFragment.b();
        }
        localList.add(localHomeShelfFragment);
        HomeTopicFragment localHomeTopicFragment = (HomeTopicFragment) activity.getSupportFragmentManager().findFragmentByTag(this.tags[1]);
        if (localHomeTopicFragment == null) {
            localHomeTopicFragment = HomeTopicFragment.b();
        }
        localList.add(localHomeTopicFragment);
        HomeFindFragment localHomeFindFragment = (HomeFindFragment) activity.getSupportFragmentManager().findFragmentByTag(this.tags[2]);
        if (localHomeFindFragment == null) {
            Bundle localBundle = new Bundle();
            localBundle.putBoolean("game_center_show", false);
            localHomeFindFragment = HomeFindFragment.a(localBundle);
        }
        localList.add(localHomeFindFragment);
        FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
        for (int i = 0;i < 3; i++) {
            Fragment localFragment = localList.get(i);
            if (!localFragment.isAdded()) {
                localFragmentTransaction.add(activity.getmViewPager().getId(), localFragment, this.tags[i]);
            }
        }
        if (!localFragmentTransaction.isEmpty()) {
            localFragmentTransaction.commit();
            paramFragmentManager.executePendingTransactions();
        }
    }

    public final Fragment getFragment(int position) {
        return activity.getFragmentList().get(position);
    }

    protected final String getTag(int position) {
        return this.tags[position];
    }

    public final int getCount() {
        return 3;
    }

    public final CharSequence getPageTitle(int paramInt) {
        return activity.getResources().getStringArray(R.array.home_tabs)[paramInt];
    }
}
