
package com.clilystudio.netbook.ui;

import android.widget.PopupWindow$OnDismissListener;

final class au implements PopupWindow$OnDismissListener {

    au(BookCategoryListActivity BookCategoryListActivity1)
    {
        a = BookCategoryListActivity1;
    }

    private BookCategoryListActivity a;

    public final void onDismiss()
    {
        a.e( "\u7B5B\u9009" );
    }
}
