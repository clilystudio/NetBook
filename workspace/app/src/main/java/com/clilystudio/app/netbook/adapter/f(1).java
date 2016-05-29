package com.clilystudio.app.netbook.adapter;

import android.view.View;

import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.x;
import com.clilystudio.app.netbook.model.BookRankSummary;
import com.squareup.a.b;

final class f
        implements View.OnClickListener {
    f(BookRankAdapter paramBookRankAdapter, BookRankSummary paramBookRankSummary, int paramInt) {
    }

    public final void onClick(View paramView) {
        i.a().c(new x(this.a, BookRankAdapter.a(this.c, this.b)));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.f
 * JD-Core Version:    0.6.2
 */