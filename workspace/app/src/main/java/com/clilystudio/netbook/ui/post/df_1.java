package com.clilystudio.netbook.ui.post;

import android.view.View;

final class df implements View.OnClickListener {
    private /* synthetic */ ReviewListActivity a;

    df(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void onClick(View view) {
        ReviewListActivity.a(this.a, 1).showAsDropDown(view, 0, 1);
        ReviewListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
    }
}
