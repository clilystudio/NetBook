package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.view.View;

final class o implements View.OnClickListener {
    private /* synthetic */ ReaderRandomActivity a;

    o(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onClick(View view) {
        ReaderRandomActivity.f(this.a);
        b.a(this.a, "random_reader_change_book");
        b.a((Context) this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
        ReaderRandomActivity.a(this.a, 1);
    }
}
