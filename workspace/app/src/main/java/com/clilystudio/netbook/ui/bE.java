package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.widget.j;

final class bE
        implements AdapterView.OnItemClickListener {
    bE(SearchActivity paramSearchActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - SearchActivity.a(this.a).getHeaderViewsCount();
        BookSummary localBookSummary;
        if ((i >= 0) && (i < SearchActivity.b(this.a).getCount())) {
            localBookSummary = (BookSummary) SearchActivity.b(this.a).getItem(i);
            if (localBookSummary != null) {
                if (localBookSummary.getPromLink() != null)
                    break label84;
                this.a.startActivity(BookInfoActivity.a(this.a, localBookSummary.getId()));
            }
        }
        return;
        label84:
        new j(this.a, localBookSummary.getPromLink()).a();
    }
}

