package com.clilystudio.app.netbook.widget;

import android.view.View;

import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.x;
import com.clilystudio.app.netbook.model.BookRankSummary;
import com.squareup.a.b;

final class at
        implements View.OnClickListener {
    at(RankCollapseItem paramRankCollapseItem, BookRankSummary paramBookRankSummary, boolean paramBoolean) {
    }

    public final void onClick(View paramView) {
        i_OttoBus.a().c(new x(this.a, this.b));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.at
 * JD-Core Version:    0.6.2
 */