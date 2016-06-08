package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ah
        implements View.OnClickListener {
    ah(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(2131034432);
        BookHelpListActivity.b(this.b, "created");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

