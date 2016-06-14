package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dn implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ ReviewListActivity b;

    dn(ReviewListActivity reviewListActivity, PopupWindow popupWindow) {
        this.b = reviewListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        ReviewListActivity.a(this.b, true);
        ReviewListActivity.m(this.b).setText("\u7cbe\u54c1");
        ReviewListActivity.a(this.b, "all");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}
