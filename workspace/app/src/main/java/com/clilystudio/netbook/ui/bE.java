package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.widget.j;

final class bE implements AdapterView.OnItemClickListener {
    private /* synthetic */ SearchActivity a;

    bE(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        BookSummary bookSummary;
        int n2 = n - SearchActivity.a(this.a).getHeaderViewsCount();
        if (n2 < 0 || n2 >= SearchActivity.b(this.a).getCount() || (bookSummary = (BookSummary) SearchActivity.b(this.a).getItem(n2)) == null) return;
        if (bookSummary.getPromLink() == null) {
            this.a.startActivity(BookInfoActivity.a(this.a, bookSummary.getId()));
            return;
        }
        new j((Context) this.a, bookSummary.getPromLink()).a();
    }
}
