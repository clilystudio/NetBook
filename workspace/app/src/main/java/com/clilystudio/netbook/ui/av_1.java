
package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class av extends ZssqFragmentPagerAdapter {

    public av(BookCategoryListActivity BookCategoryListActivity1, FragmentManager FragmentManager2)
    {
        super( FragmentManager2 );
        int int4;
        FragmentTransaction FragmentTransaction3;

        b = BookCategoryListActivity1;
        a = new String[] { "new", "hot", "reputation", "over" };
        BookCategoryListActivity.b( BookCategoryListActivity1 ).add( 0, BookCategoryListActivity1.a( a[0] ) );
        BookCategoryListActivity.b( BookCategoryListActivity1 ).add( 1, BookCategoryListActivity1.a( a[1] ) );
        BookCategoryListActivity.b( BookCategoryListActivity1 ).add( 2, BookCategoryListActivity1.a( a[2] ) );
        BookCategoryListActivity.b( BookCategoryListActivity1 ).add( 3, BookCategoryListActivity1.a( a[3] ) );
        FragmentTransaction3 = FragmentManager2.beginTransaction();
        for( int4 = 0; int4 < 4; ++int4 )
        {
            Fragment Fragment7 = (Fragment) BookCategoryListActivity.b( BookCategoryListActivity1 ).get( int4 );

            if( !Fragment7.isAdded() )
                FragmentTransaction3.add( BookCategoryListActivity.c( BookCategoryListActivity1 ).getId(), Fragment7, a[int4] );
        }
        if( !FragmentTransaction3.isEmpty() )
        {
            FragmentTransaction3.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    private String[] a;
    private BookCategoryListActivity b;

    public final Fragment a(int int1)
    {
        return (Fragment) BookCategoryListActivity.b( b ).get( int1 );
    }

    protected final String b(int int1)
    {
        return a[int1];
    }

    public final int getCount()
    {
        return 4;
    }

    public final CharSequence getPageTitle(int int1)
    {
        return (CharSequence) BookCategoryListActivity.d( b )[int1];
    }
}
