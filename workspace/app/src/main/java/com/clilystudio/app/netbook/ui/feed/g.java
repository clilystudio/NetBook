package com.clilystudio.app.netbook.ui.feed;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.n;
import com.squareup.a.b;

final class g
        implements View.OnClickListener {
    g(f paramf, TextView paramTextView, BookReadRecord paramBookReadRecord) {
    }

    public final void onClick(View paramView) {
        f.a(this.c, this.a);
        this.b.setFeeding(false);
        this.b.setFeedFat(false);
        BookReadRecord.addAccountInfo(this.b);
        this.b.save();
        i_OttoBus.a().c(new n(this.b.getBookId()));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.g
 * JD-Core Version:    0.6.2
 */