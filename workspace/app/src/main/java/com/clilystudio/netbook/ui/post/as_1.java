
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class as implements View$OnClickListener {

    as(BookHelpListActivity BookHelpListActivity1, PopupWindow PopupWindow2)
    {
        b = BookHelpListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private BookHelpListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        BookHelpListActivity.b( b, true );
        BookHelpListActivity.k( b ).setText( (CharSequence) "\u7CBE\u54C1" );
        BookHelpListActivity.a( b, "all" );
        BookHelpListActivity.l( b ).setRefreshing();
    }
}
