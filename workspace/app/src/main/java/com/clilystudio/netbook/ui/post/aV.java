
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class aV implements View$OnClickListener {

    aV(CommonPostListActivity CommonPostListActivity1, PopupWindow PopupWindow2)
    {
        b = CommonPostListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private CommonPostListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        CommonPostListActivity.k( b ).setText( (CharSequence) "\u6700\u591A\u8BC4\u8BBA" );
        CommonPostListActivity.b( b, "comment-count" );
        CommonPostListActivity.j( b ).setVisibility( 0 );
        CommonPostListActivity.j( b ).setRefreshing();
    }
}
