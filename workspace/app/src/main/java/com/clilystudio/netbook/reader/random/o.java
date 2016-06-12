package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.umeng.a.b;

final class o implements View$OnClickListener {

    private ReaderRandomActivity a;

    o(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void onClick(View View1) {
        ReaderRandomActivity.f(a);
        b.a((Context) a, "random_reader_change_book");
        b.a((Context) a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(a));
        ReaderRandomActivity.a(a, 1);
    }
}
