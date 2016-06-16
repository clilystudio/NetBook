package com.clilystudio.netbook.ui.post;

import android.view.View;

final class bA implements View.OnClickListener {
    private /* synthetic */ GirlTopicListActivity a;

    bA(GirlTopicListActivity girlTopicListActivity) {
        this.a = girlTopicListActivity;
    }

    @Override
    public final void onClick(View view) {
        GirlTopicListActivity.a(this.a, false).showAsDropDown(view);
        GirlTopicListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
    }
}
