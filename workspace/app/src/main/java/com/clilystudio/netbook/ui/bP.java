package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.model.BookSummary;

import java.util.List;

final class bP extends bR {
    private /* synthetic */ SearchActivity b;

    private bP(SearchActivity searchActivity) {
        this.b = searchActivity;
        super(searchActivity, 0);
    }

    /* synthetic */ bP(SearchActivity searchActivity, byte by) {
        this(searchActivity);
    }

    @Override
    protected final void a(List<BookSummary> list) {
        super.a(list);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        super.a((List) object);
    }

    @Override
    protected final void onPreExecute() {
        super.onPreExecute();
        SearchActivity.b(this.b, SearchActivity.f(this.b).getText().toString());
    }
}
