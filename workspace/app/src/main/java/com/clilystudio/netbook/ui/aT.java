package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookSummary;

final class aT
        implements AdapterView.OnItemClickListener {
    aT(BookTagListActivity paramBookTagListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        if ((paramInt >= 0) && (paramInt < BookTagListActivity.a(this.a).size())) {
            BookSummary localBookSummary = (BookSummary) BookTagListActivity.a(this.a).get(paramInt);
            BookTagListActivity.a(this.a, localBookSummary);
        }
    }
}

