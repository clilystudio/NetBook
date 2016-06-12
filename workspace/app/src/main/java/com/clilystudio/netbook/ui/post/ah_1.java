package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class ah implements View$OnClickListener {

    private PopupWindow a;
    private BookHelpListActivity b;
    ah(BookHelpListActivity BookHelpListActivity1, PopupWindow PopupWindow2) {
        b = BookHelpListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        BookHelpListActivity.m(b).setText(2131034432);
        BookHelpListActivity.b(b, "created");
        BookHelpListActivity.l(b).setRefreshing();
    }
}
