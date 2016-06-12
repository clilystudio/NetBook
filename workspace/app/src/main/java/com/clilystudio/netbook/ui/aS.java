
package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class aS extends ZssqFragmentPagerAdapter {

    public aS(BookRankMainActivity BookRankMainActivity1, FragmentManager FragmentManager2)
    {
        super( FragmentManager2 );
        int int5;
        FragmentTransaction FragmentTransaction4;
        int int3;

        b = BookRankMainActivity1;
        a = new String[] { "weekly", "monthly", "all" };
        for( int3 = 0; int3 < 3; ++int3 )
            BookRankMainActivity.b( BookRankMainActivity1 ).add( int3, BookRankMainActivity.a( BookRankMainActivity1, BookRankMainActivity.a( BookRankMainActivity1 )[int3], a[int3], a[int3] ) );
        FragmentTransaction4 = FragmentManager2.beginTransaction();
        for( int5 = 0; int5 < 3; ++int5 )
        {
            Fragment Fragment8 = (Fragment) BookRankMainActivity.b( BookRankMainActivity1 ).get( int5 );

            if( !Fragment8.isAdded() )
                FragmentTransaction4.add( BookRankMainActivity.c( BookRankMainActivity1 ).getId(), Fragment8, a[int5] );
        }
        if( !FragmentTransaction4.isEmpty() )
        {
            FragmentTransaction4.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    private String[] a;
    private BookRankMainActivity b;

    public final Fragment a(int int1)
    {
        return (Fragment) BookRankMainActivity.b( b ).get( int1 );
    }

    protected final String b(int int1)
    {
        return a[int1];
    }

    public final int getCount()
    {
        return 3;
    }
}
