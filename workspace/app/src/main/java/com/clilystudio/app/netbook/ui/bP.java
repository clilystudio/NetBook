package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.model.BookSummary;

import java.util.List;

final class bP extends bR {
    private bP(SearchActivity paramSearchActivity) {
        super(paramSearchActivity, (byte) 0);
    }

    protected final void a(List<BookSummary> paramList) {
        super.a(paramList);
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        SearchActivity.b(this.b, SearchActivity.f(this.b).getText().toString());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bP
 * JD-Core Version:    0.6.2
 */