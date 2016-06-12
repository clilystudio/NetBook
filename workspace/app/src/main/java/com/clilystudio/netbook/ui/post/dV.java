
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class dV extends ZssqFragmentPagerAdapter {

    public dV(TweetTabActivity TweetTabActivity1, FragmentManager FragmentManager2)
    {
        super( FragmentManager2 );
        FragmentTransaction FragmentTransaction13;
        MyTweetFragment MyTweetFragment12;
        String String11;
        List List10;
        TweetHotFragment TweetHotFragment9;
        String String8;
        List List7;
        TweetTimelineFragment TweetTimelineFragment6;
        String String5;
        List List4;
        int int3;

        int3 = 0;
        b = TweetTabActivity1;
        a = new String[] { "tabTag0", "tabTag1", "tabTag2" };
        List4 = TweetTabActivity.a( TweetTabActivity1 );
        String5 = a[0];
        TweetTimelineFragment6 = (TweetTimelineFragment) TweetTabActivity1.getSupportFragmentManager().findFragmentByTag( String5 );
        if( TweetTimelineFragment6 == null )
            TweetTimelineFragment6 = new TweetTimelineFragment();
        List4.add( 0, TweetTimelineFragment6 );
        List7 = TweetTabActivity.a( TweetTabActivity1 );
        String8 = a[1];
        TweetHotFragment9 = (TweetHotFragment) TweetTabActivity1.getSupportFragmentManager().findFragmentByTag( String8 );
        if( TweetHotFragment9 == null )
            TweetHotFragment9 = new TweetHotFragment();
        List7.add( 1, TweetHotFragment9 );
        List10 = TweetTabActivity.a( TweetTabActivity1 );
        String11 = a[2];
        MyTweetFragment12 = (MyTweetFragment) TweetTabActivity1.getSupportFragmentManager().findFragmentByTag( String11 );
        if( MyTweetFragment12 == null )
            MyTweetFragment12 = new MyTweetFragment();
        List10.add( 2, MyTweetFragment12 );
        FragmentTransaction13 = FragmentManager2.beginTransaction();
        while( int3 < 3 )
        {
            Fragment Fragment16 = (Fragment) TweetTabActivity.a( TweetTabActivity1 ).get( int3 );

            if( !Fragment16.isAdded() )
                FragmentTransaction13.add( TweetTabActivity.b( TweetTabActivity1 ).getId(), Fragment16, a[int3] );
            ++int3;
        }
        if( !FragmentTransaction13.isEmpty() )
        {
            FragmentTransaction13.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    private String[] a;
    private TweetTabActivity b;

    public final Fragment a(int int1)
    {
        return (Fragment) TweetTabActivity.a( b ).get( int1 );
    }

    protected final String b(int int1)
    {
        return a[int1];
    }

    public final int getCount()
    {
        return 3;
    }

    public final CharSequence getPageTitle(int int1)
    {
        return (CharSequence) b.getResources().getStringArray( 2131361809 )[int1];
    }
}
