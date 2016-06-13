package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.content.DialogInterface;

final class B
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderRandomActivity a;

    B(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        ReaderRandomActivity.e(this.a);
        b.a(this.a, "random_reader_quit_choice", "add_shelf");
        b.a((Context) this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
        this.a.finish();
    }
}
