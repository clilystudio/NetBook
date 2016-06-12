package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class ag implements View$OnClickListener {

    private PopupWindow a;
    private BookHelpListActivity b;
    ag(BookHelpListActivity BookHelpListActivity1, PopupWindow PopupWindow2) {
        b = BookHelpListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        BookHelpListActivity.m(b).setText(2131034433);
        BookHelpListActivity.b(b, "updated");
        BookHelpListActivity.l(b).setRefreshing();
    }
}
