package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookSummary;

final class aT implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookTagListActivity a;

    aT(BookTagListActivity bookTagListActivity) {
        this.a = bookTagListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        if (n >= 0 && n < BookTagListActivity.a(this.a).size()) {
            BookSummary bookSummary = (BookSummary) BookTagListActivity.a(this.a).get(n);
            BookTagListActivity.a(this.a, bookSummary);
        }
    }
}
