package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ai implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ BookHelpListActivity b;

    ai(BookHelpListActivity bookHelpListActivity, PopupWindow popupWindow) {
        this.b = bookHelpListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(R.string.post_sort_reply_count);
        BookHelpListActivity.b(this.b, "comment-count");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}
