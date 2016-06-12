
package com.clilystudio.netbook.ui.home;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class ZssqFragmentPagerAdapter extends PagerAdapter {

    public ZssqFragmentPagerAdapter(FragmentManager FragmentManager1)
    {
        a = FragmentManager1;
    }

    private FragmentManager a;     // final access specifier removed
    private FragmentTransaction b = null;
    private Fragment c = null;

    public abstract Fragment a(int int1);

    protected abstract String b(int int1);

    public void destroyItem(ViewGroup ViewGroup1, int int2, Object Object3)
    {
        if( b == null )
            b = a.beginTransaction();
        b.detach( (Fragment) Object3 );
    }

    public void finishUpdate(ViewGroup ViewGroup1)
    {
        if( b != null )
        {
            b.commitAllowingStateLoss();
            b = null;
            a.executePendingTransactions();
        }
    }

    public Object instantiateItem(ViewGroup ViewGroup1, int int2)
    {
        String String3;
        Object Object4;

        if( b == null )
            b = a.beginTransaction();
        String3 = b( int2 );
        Object4 = a.findFragmentByTag( String3 );
        if( Object4 != null )
            b.attach( (Fragment) Object4 );
        else
        {
            Object4 = a( int2 );
            if( !((Fragment) Object4).isAdded() )
                b.add( ViewGroup1.getId(), (Fragment) Object4, b( int2 ) );
            else
                b.show( (Fragment) Object4 );
        }
        if( Object4 != c )
        {
            ((Fragment) Object4).setMenuVisibility( false );
            ((Fragment) Object4).setUserVisibleHint( false );
        }
        return Object4;
    }

    public boolean isViewFromObject(View View1, Object Object2)
    {
        if( ((Fragment) Object2).getView() == View1 )
            return true;
        else
            return false;
    }

    public void restoreState(Parcelable Parcelable1, ClassLoader ClassLoader2)
    {
    }

    public Parcelable saveState()
    {
        return null;
    }

    public void setPrimaryItem(ViewGroup ViewGroup1, int int2, Object Object3)
    {
        Fragment Fragment4 = (Fragment) Object3;

        if( Fragment4 != c )
        {
            if( c != null )
            {
                c.setMenuVisibility( false );
                c.setUserVisibleHint( false );
            }
            if( Fragment4 != null )
            {
                Fragment4.setMenuVisibility( true );
                Fragment4.setUserVisibleHint( true );
            }
            c = Fragment4;
        }
    }

    public void startUpdate(ViewGroup ViewGroup1)
    {
    }
}
