
package com.clilystudio.netbook.ui;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

final class bc extends PagerAdapter {

    bc(IntroActivity IntroActivity1)
    {
        a = IntroActivity1;
    }

    private IntroActivity a;

    public final void destroyItem(ViewGroup ViewGroup1, int int2, Object Object3)
    {
        ViewGroup1.removeView( (View) IntroActivity.a( a ).get( int2 ) );
    }

    public final int getCount()
    {
        return IntroActivity.a( a ).size();
    }

    public final Object instantiateItem(ViewGroup ViewGroup1, int int2)
    {
        ViewGroup1.addView( (View) IntroActivity.a( a ).get( int2 ), 0 );
        return IntroActivity.a( a ).get( int2 );
    }

    public final boolean isViewFromObject(View View1, Object Object2)
    {
        if( View1 == Object2 )
            return true;
        else
            return false;
    }
}
