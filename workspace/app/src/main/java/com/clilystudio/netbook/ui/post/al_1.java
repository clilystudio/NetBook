package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class al implements View$OnClickListener {

    private BookHelpListActivity a;

    al(BookHelpListActivity BookHelpListActivity1) {
        a = BookHelpListActivity1;
    }

    public final void onClick(View View1) {
        BookHelpListActivity.a(a, true).showAsDropDown(View1);
        BookHelpListActivity.b(a).setImageDrawable(a.getResources().getDrawable(2130837722));
    }
}
