package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aJ implements View$OnClickListener {

    private BookListActivity a;

    aJ(BookListActivity BookListActivity1) {
        a = BookListActivity1;
    }

    public final void onClick(View View1) {
        a.b();
    }
}
