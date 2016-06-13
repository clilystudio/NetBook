package com.clilystudio.netbook.ui;

import android.widget.PopupWindow;

final class au
        implements PopupWindow.OnDismissListener {
    private /* synthetic */ BookCategoryListActivity a;

    au(BookCategoryListActivity bookCategoryListActivity) {
        this.a = bookCategoryListActivity;
    }

    @Override
    public final void onDismiss() {
        this.a.e("\u7b5b\u9009");
    }
}
