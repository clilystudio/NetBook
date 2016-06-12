
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class cN implements View$OnClickListener {

    cN(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2)
    {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    private PopupWindow a;
    private ReviewListActivity b;

    public final void onClick(View View1)
    {
        ReviewListActivity.a( b, a, 2 );
    }
}
