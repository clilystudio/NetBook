
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;
import com.clilystudio.netbook.widget.ScrollLoadListView;

final class a implements AbsListView$OnScrollListener {

    a(AbsPostActivity AbsPostActivity1)
    {
        a = AbsPostActivity1;
    }

    AbsPostActivity a;     // final access specifier removed

    public final void onScroll(AbsListView AbsListView1, int int2, int int3, int int4)
    {
        a.b.onScroll( AbsListView1, int2, int3, int4 );
    }

    public final void onScrollStateChanged(AbsListView AbsListView1, int int2)
    {
        a.b.onScrollStateChanged( AbsListView1, int2 );
        if( int2 == 1 )
            new Handler().post( (Runnable) new b( this ) );
    }
}
