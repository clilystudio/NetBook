package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ar
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ BookHelpListActivity b;

    ar(BookHelpListActivity bookHelpListActivity, PopupWindow popupWindow) {
        this.b = bookHelpListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        BookHelpListActivity.k(this.b).setText("\u5168\u90e8");
        BookHelpListActivity.b(this.b, false);
        BookHelpListActivity.a(this.b, "all");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}
