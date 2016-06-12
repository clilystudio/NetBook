
package com.clilystudio.netbook.widget;

import android.support.v7.widget.m;
import android.view.MenuItem;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ar implements m {

    ar(aq aq1, AbsPostActivity AbsPostActivity2)
    {
        a = AbsPostActivity2;
    }

    private AbsPostActivity a;

    public final boolean a(MenuItem MenuItem1)
    {
        switch( MenuItem1.getItemId() )
        {
            default:
                return true;
            case 1195:
                a.e( 0 );
                return true;
            case 1196:
                a.e( 1 );
                return true;
        }
    }
}
