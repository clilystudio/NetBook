package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dd implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ ReviewListActivity b;

    dd(ReviewListActivity reviewListActivity, PopupWindow popupWindow) {
        this.b = reviewListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        ReviewListActivity.o(this.b).setText(R.string.post_sort_reply_count);
        ReviewListActivity.b(this.b, "comment-count");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}
