package com.clilystudio.netbook.ui.post;

import android.view.View;

final class bz implements View.OnClickListener {
    private /* synthetic */ GirlTopicListActivity a;

    bz(GirlTopicListActivity girlTopicListActivity) {
        this.a = girlTopicListActivity;
    }

    @Override
    public final void onClick(View view) {
        GirlTopicListActivity.a(this.a, true).showAsDropDown(view);
        GirlTopicListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
    }
}
