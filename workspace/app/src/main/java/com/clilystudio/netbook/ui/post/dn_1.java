
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class dn implements View$OnClickListener {

    dn(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2)
    {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private ReviewListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        ReviewListActivity.a( b, true );
        ReviewListActivity.m( b ).setText( (CharSequence) "\u7CBE\u54C1" );
        ReviewListActivity.a( b, "all" );
        ReviewListActivity.n( b ).setRefreshing();
    }
}
