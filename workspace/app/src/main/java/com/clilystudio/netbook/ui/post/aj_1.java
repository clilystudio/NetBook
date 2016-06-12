package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow$OnDismissListener;

final class aj implements PopupWindow$OnDismissListener {

    private BookHelpListActivity a;

    aj(BookHelpListActivity BookHelpListActivity1) {
        a = BookHelpListActivity1;
    }

    public final void onDismiss() {
        BookHelpListActivity.b(a).setImageDrawable(a.getResources().getDrawable(2130837721));
        BookHelpListActivity.c(a).setImageDrawable(a.getResources().getDrawable(2130837721));
    }
}
