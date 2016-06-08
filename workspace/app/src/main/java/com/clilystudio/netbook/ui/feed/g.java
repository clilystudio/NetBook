package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.n;
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
        i.a().c(new n(this.b.getBookId()));
    }
}

