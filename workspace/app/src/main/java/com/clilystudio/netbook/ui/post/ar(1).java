package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ar
        implements View.OnClickListener {
    ar(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.k(this.b).setText("全部");
        BookHelpListActivity.b(this.b, false);
        BookHelpListActivity.a(this.b, "all");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

