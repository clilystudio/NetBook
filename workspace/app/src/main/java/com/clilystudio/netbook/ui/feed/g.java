package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.n;

final class g implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ BookReadRecord b;
    private /* synthetic */ f c;

    g(f f2, TextView textView, BookReadRecord bookReadRecord) {
        this.c = f2;
        this.a = textView;
        this.b = bookReadRecord;
    }

    @Override
    public final void onClick(View view) {
        f.a(this.c, this.a);
        this.b.setFeeding(false);
        this.b.setFeedFat(false);
        BookReadRecord.addAccountInfo(this.b);
        this.b.save();
        i.a().c(new n(this.b.getBookId()));
    }
}
