package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

final class at
        implements AdapterView.OnItemClickListener {
    at(BookCategoryListActivity paramBookCategoryListActivity, String[] paramArrayOfString) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        BookCategoryListActivity.a(this.b, this.a[paramInt]);
    }
}

