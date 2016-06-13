package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dm
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ ReviewListActivity b;

    dm(ReviewListActivity reviewListActivity, PopupWindow popupWindow) {
        this.b = reviewListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        ReviewListActivity.m(this.b).setText("\u5168\u90e8");
        ReviewListActivity.a(this.b, "all");
        ReviewListActivity.a(this.b, false);
        ReviewListActivity.n(this.b).setRefreshing();
    }
}
