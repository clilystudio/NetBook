package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;

final class f implements View$OnClickListener {

    private BookRankSummary a;
    private int b;
    private BookRankAdapter c;
    f(BookRankAdapter BookRankAdapter1, BookRankSummary BookRankSummary2, int int3) {
        c = BookRankAdapter1;
        a = BookRankSummary2;
        b = int3;
    }

    public final void onClick(View View1) {
        i.a().c(new x(a, BookRankAdapter.a(c, b)));
    }
}
