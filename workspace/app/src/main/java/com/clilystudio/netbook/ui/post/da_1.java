
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class da implements View$OnClickListener {

    da(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2)
    {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private ReviewListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        ReviewListActivity.o( b ).setText( 2131034433 );
        ReviewListActivity.b( b, "updated" );
        ReviewListActivity.n( b ).setRefreshing();
    }
}
