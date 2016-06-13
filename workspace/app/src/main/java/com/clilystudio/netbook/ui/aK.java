package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

final class aK
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookListActivity a;

    aK(BookListActivity bookListActivity) {
        this.a = bookListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        this.a.a(n);
    }
}
