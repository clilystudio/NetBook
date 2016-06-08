package com.clilystudio.netbook.reader.random;

import android.view.View;

final class o
        implements View.OnClickListener {
    o(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onClick(View paramView) {
        ReaderRandomActivity.f(this.a);
        b.a(this.a, "random_reader_change_book");
        b.a(this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
        ReaderRandomActivity.a(this.a, 1);
    }
}

