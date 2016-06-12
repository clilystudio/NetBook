
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class bf implements View$OnClickListener {

    bf(CommonPostListActivity CommonPostListActivity1, PopupWindow PopupWindow2)
    {
        b = CommonPostListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private CommonPostListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        CommonPostListActivity.a( b, true );
        CommonPostListActivity.i( b ).setText( (CharSequence) "\u7CBE\u54C1" );
        CommonPostListActivity.a( b, "all" );
        CommonPostListActivity.j( b ).setVisibility( 0 );
        CommonPostListActivity.j( b ).setRefreshing();
    }
}
