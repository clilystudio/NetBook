package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class as
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ BookHelpListActivity b;

    as(BookHelpListActivity bookHelpListActivity, PopupWindow popupWindow) {
        this.b = bookHelpListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        BookHelpListActivity.b(this.b, true);
        BookHelpListActivity.k(this.b).setText("\u7cbe\u54c1");
        BookHelpListActivity.a(this.b, "all");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}
