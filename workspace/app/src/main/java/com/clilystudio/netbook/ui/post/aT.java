
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class aT implements View$OnClickListener {

    aT(CommonPostListActivity CommonPostListActivity1, PopupWindow PopupWindow2)
    {
        b = CommonPostListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private CommonPostListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        CommonPostListActivity.k( b ).setText( (CharSequence) "\u9ED8\u8BA4\u6392\u5E8F" );
        CommonPostListActivity.b( b, "updated" );
        CommonPostListActivity.j( b ).setVisibility( 0 );
        CommonPostListActivity.j( b ).setRefreshing();
    }
}
