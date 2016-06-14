package com.clilystudio.netbook.ui;

import android.view.View;

final class aJ implements View.OnClickListener {
    private /* synthetic */ BookListActivity a;

    aJ(BookListActivity bookListActivity) {
        this.a = bookListActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.b();
    }
}
