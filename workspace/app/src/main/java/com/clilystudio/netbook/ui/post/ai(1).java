package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ai
        implements View.OnClickListener {
    ai(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(2131034434);
        BookHelpListActivity.b(this.b, "comment-count");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

