
package com.clilystudio.netbook.ui.ugcbook;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class aj extends ZssqFragmentPagerAdapter {

    public aj(UGCMainActivity UGCMainActivity1, FragmentManager FragmentManager2)
    {
        super( FragmentManager2 );
        int int4;
        FragmentTransaction FragmentTransaction3;

        b = UGCMainActivity1;
        a = new String[] { "ugcTag0", "ugcTag1", "ugcTag2" };
        UGCMainActivity.e( UGCMainActivity1 ).add( 0, UGCMainActivity1.a( a[0], "collectorCount", "last-seven-days" ) );
        UGCMainActivity.e( UGCMainActivity1 ).add( 1, UGCMainActivity1.a( a[1], "created", "all" ) );
        UGCMainActivity.e( UGCMainActivity1 ).add( 2, UGCMainActivity1.a( a[2], "collectorCount", "all" ) );
        FragmentTransaction3 = FragmentManager2.beginTransaction();
        for( int4 = 0; int4 < 3; ++int4 )
        {
            Fragment Fragment7 = (Fragment) UGCMainActivity.e( UGCMainActivity1 ).get( int4 );

            if( !Fragment7.isAdded() )
                FragmentTransaction3.add( UGCMainActivity.f( UGCMainActivity1 ).getId(), Fragment7, a[int4] );
        }
        if( !FragmentTransaction3.isEmpty() )
        {
            FragmentTransaction3.commit();
            FragmentManager2.executePendingTransactions();
        }
    }

    private String[] a;
    private UGCMainActivity b;

    public final Fragment a(int int1)
    {
        return (Fragment) UGCMainActivity.e( b ).get( int1 );
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
        return (CharSequence) b.getResources().getStringArray( 2131361810 )[int1];
    }
}
