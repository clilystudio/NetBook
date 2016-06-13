package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

final class at
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ String[] a;
    private /* synthetic */ BookCategoryListActivity b;

    at(BookCategoryListActivity bookCategoryListActivity, String[] arrstring) {
        this.b = bookCategoryListActivity;
        this.a = arrstring;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        BookCategoryListActivity.a(this.b, this.a[n]);
    }
}
