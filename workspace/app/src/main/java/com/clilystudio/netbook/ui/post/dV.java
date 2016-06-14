package com.clilystudio.netbook.ui.post;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

import java.util.List;

final class dV extends ZssqFragmentPagerAdapter {
    private String[] a;
    private /* synthetic */ TweetTabActivity b;

    public dV(TweetTabActivity tweetTabActivity, FragmentManager fragmentManager) {
        int n = 0;
        this.b = tweetTabActivity;
        super(fragmentManager);
        this.a = new String[]{"tabTag0", "tabTag1", "tabTag2"};
        List list = TweetTabActivity.a(tweetTabActivity);
        String string = this.a[0];
        TweetTimelineFragment tweetTimelineFragment = (TweetTimelineFragment) tweetTabActivity.getSupportFragmentManager().findFragmentByTag(string);
        if (tweetTimelineFragment == null) {
            tweetTimelineFragment = new TweetTimelineFragment();
        }
        list.add(0, tweetTimelineFragment);
        List list2 = TweetTabActivity.a(tweetTabActivity);
        String string2 = this.a[1];
        TweetHotFragment tweetHotFragment = (TweetHotFragment) tweetTabActivity.getSupportFragmentManager().findFragmentByTag(string2);
        if (tweetHotFragment == null) {
            tweetHotFragment = new TweetHotFragment();
        }
        list2.add(1, tweetHotFragment);
        List list3 = TweetTabActivity.a(tweetTabActivity);
        String string3 = this.a[2];
        MyTweetFragment myTweetFragment = (MyTweetFragment) tweetTabActivity.getSupportFragmentManager().findFragmentByTag(string3);
        if (myTweetFragment == null) {
            myTweetFragment = new MyTweetFragment();
        }
        list3.add(2, myTweetFragment);
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        while (n < 3) {
            Fragment fragment = (Fragment) TweetTabActivity.a(tweetTabActivity).get(n);
            if (!fragment.isAdded()) {
                fragmentTransaction.add(TweetTabActivity.b(tweetTabActivity).getId(), fragment, this.a[n]);
            }
            ++n;
        }
        if (!fragmentTransaction.isEmpty()) {
            fragmentTransaction.commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override
    public final Fragment a(int n) {
        return (Fragment) TweetTabActivity.a(this.b).get(n);
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
        return this.b.getResources().getStringArray(2131361809)[n];
    }
}
