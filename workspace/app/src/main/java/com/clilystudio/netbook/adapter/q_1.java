
package com.clilystudio.netbook.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class q implements CompoundButton$OnCheckedChangeListener {

    q(HomeShelfAdapter HomeShelfAdapter1, int int2)
    {
        b = HomeShelfAdapter1;
        a = int2;
    }

    private int a;
    private HomeShelfAdapter b;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        if( !com.clilystudio.netbook.adapter.HomeShelfAdapter.a( b ) )
        {
            HomeShelfAdapter.b( b )[a] = boolean2;
            HomeShelfAdapter.a( b, a );
        }
    }
}
