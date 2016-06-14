package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ah implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ BookHelpListActivity b;

    ah(BookHelpListActivity bookHelpListActivity, PopupWindow popupWindow) {
        this.b = bookHelpListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(2131034432);
        BookHelpListActivity.b(this.b, "created");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}
