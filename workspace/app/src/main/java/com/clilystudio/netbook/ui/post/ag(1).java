package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ag
        implements View.OnClickListener {
    ag(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(2131034433);
        BookHelpListActivity.b(this.b, "updated");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

