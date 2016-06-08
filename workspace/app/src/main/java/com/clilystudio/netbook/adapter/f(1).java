package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;
import com.squareup.a.b;

final class f
        implements View.OnClickListener {
    f(BookRankAdapter paramBookRankAdapter, BookRankSummary paramBookRankSummary, int paramInt) {
    }

    public final void onClick(View paramView) {
        i.a().c(new x(this.a, BookRankAdapter.a(this.c, this.b)));
    }
}

