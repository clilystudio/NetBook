
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class bu implements View$OnClickListener {

    bu(GirlTopicListActivity GirlTopicListActivity1, PopupWindow PopupWindow2)
    {
        b = GirlTopicListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private GirlTopicListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        GirlTopicListActivity.m( b ).setText( 2131034433 );
        GirlTopicListActivity.b( b, "updated" );
        GirlTopicListActivity.l( b ).setRefreshing();
    }
}
