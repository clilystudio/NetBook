package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;

final class f
        implements View.OnClickListener {
    private /* synthetic */ BookRankSummary a;
    private /* synthetic */ int b;
    private /* synthetic */ BookRankAdapter c;

    f(BookRankAdapter bookRankAdapter, BookRankSummary bookRankSummary, int n) {
        this.c = bookRankAdapter;
        this.a = bookRankSummary;
        this.b = n;
    }

    @Override
    public final void onClick(View view) {
        i.a().c(new x(this.a, BookRankAdapter.a(this.c, this.b)));
    }
}
