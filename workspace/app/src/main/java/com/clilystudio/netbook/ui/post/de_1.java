package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow;

final class de implements PopupWindow.OnDismissListener {
    private /* synthetic */ ReviewListActivity a;

    de(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void onDismiss() {
        ReviewListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_down));
        ReviewListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_down));
        ReviewListActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_down));
    }
}
