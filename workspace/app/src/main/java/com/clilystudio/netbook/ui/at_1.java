package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class at implements AdapterView$OnItemClickListener {

    private String[] a;
    private BookCategoryListActivity b;
    at(BookCategoryListActivity BookCategoryListActivity1, String[] String_1darray2) {
        b = BookCategoryListActivity1;
        a = String_1darray2;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        BookCategoryListActivity.a(b, a[int3]);
    }
}
