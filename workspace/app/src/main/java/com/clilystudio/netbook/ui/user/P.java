
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;
import android.widget.RelativeLayout;
import com.clilystudio.netbook.widget.ScrollLoadListView;

final class P implements AbsListView$OnScrollListener {

    P(PayConsumeActivity PayConsumeActivity1)
    {
        a = PayConsumeActivity1;
    }

    private PayConsumeActivity a;

    public final void onScroll(AbsListView AbsListView1, int int2, int int3, int int4)
    {
        PayConsumeActivity.a( a ).onScroll( AbsListView1, int2, int3, int4 );
        PayConsumeActivity.b( a ).removeView( null );
    }

    public final void onScrollStateChanged(AbsListView AbsListView1, int int2)
    {
        PayConsumeActivity.a( a ).onScrollStateChanged( AbsListView1, int2 );
    }
}
