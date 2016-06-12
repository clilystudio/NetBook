package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.widget.j;

final class bE implements AdapterView$OnItemClickListener {

    private SearchActivity a;

    bE(SearchActivity SearchActivity1) {
        a = SearchActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        int int6 = int3 - SearchActivity.a(a).getHeaderViewsCount();

        if (int6 >= 0 && int6 < SearchActivity.b(a).getCount()) {
            BookSummary BookSummary7 = (BookSummary) SearchActivity.b(a).getItem(int6);

            if (BookSummary7 != null) {
                if (BookSummary7.getPromLink() == null)
                    a.startActivity(BookInfoActivity.a((Context) a, BookSummary7.getId()));
                else {
                    new j((Context) a, BookSummary7.getPromLink()).a();
                    return;
                }
            }
        }
    }
}
