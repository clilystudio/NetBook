package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class am implements View$OnClickListener {

    private BookHelpListActivity a;

    am(BookHelpListActivity BookHelpListActivity1) {
        a = BookHelpListActivity1;
    }

    public final void onClick(View View1) {
        BookHelpListActivity.a(a, false).showAsDropDown(View1);
        BookHelpListActivity.c(a).setImageDrawable(a.getResources().getDrawable(2130837722));
    }
}
