package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ag implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ BookHelpListActivity b;

    ag(BookHelpListActivity bookHelpListActivity, PopupWindow popupWindow) {
        this.b = bookHelpListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(R.string.post_sort_default);
        BookHelpListActivity.b(this.b, "updated");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}
