package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class cL
        implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ ReviewListActivity b;

    cL(ReviewListActivity reviewListActivity, PopupWindow popupWindow) {
        this.b = reviewListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        ReviewListActivity.a(this.b, this.a, 0);
    }
}
