package com.clilystudio.netbook.ui.post;

import android.view.View;

final class al implements View.OnClickListener {
    private /* synthetic */ BookHelpListActivity a;

    al(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    @Override
    public final void onClick(View view) {
        BookHelpListActivity.a(this.a, true).showAsDropDown(view);
        BookHelpListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
    }
}
