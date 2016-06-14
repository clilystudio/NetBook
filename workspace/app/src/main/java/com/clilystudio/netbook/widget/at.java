package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;

final class at implements View.OnClickListener {
    private /* synthetic */ BookRankSummary a;
    private /* synthetic */ boolean b;

    at(RankCollapseItem rankCollapseItem, BookRankSummary bookRankSummary, boolean bl) {
        this.a = bookRankSummary;
        this.b = bl;
    }

    @Override
    public final void onClick(View view) {
        i.a().c(new x(this.a, this.b));
    }
}
