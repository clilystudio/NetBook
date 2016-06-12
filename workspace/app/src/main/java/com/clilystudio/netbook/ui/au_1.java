package com.clilystudio.netbook.ui;

import android.widget.PopupWindow$OnDismissListener;

final class au implements PopupWindow$OnDismissListener {

    private BookCategoryListActivity a;

    au(BookCategoryListActivity BookCategoryListActivity1) {
        a = BookCategoryListActivity1;
    }

    public final void onDismiss() {
        a.e("\u7B5B\u9009");
    }
}
