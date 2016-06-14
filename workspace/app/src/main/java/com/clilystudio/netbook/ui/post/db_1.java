package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class db implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ ReviewListActivity b;

    db(ReviewListActivity reviewListActivity, PopupWindow popupWindow) {
        this.b = reviewListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        ReviewListActivity.o(this.b).setText(2131034432);
        ReviewListActivity.b(this.b, "created");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}
