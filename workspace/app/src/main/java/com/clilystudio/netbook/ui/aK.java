package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

final class aK
        implements AdapterView.OnItemClickListener {
    aK(BookListActivity paramBookListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        this.a.a(paramInt);
    }
}

