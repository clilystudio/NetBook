package com.clilystudio.netbook.ui.post;

import android.view.View;

final class am implements View.OnClickListener {
    private /* synthetic */ BookHelpListActivity a;

    am(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    @Override
    public final void onClick(View view) {
        BookHelpListActivity.a(this.a, false).showAsDropDown(view);
        BookHelpListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
    }
}
