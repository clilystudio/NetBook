package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.content.DialogInterface;

final class A implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderRandomActivity a;

    A(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        b.a(this.a, "random_reader_quit_choice", "quit");
        b.a((Context) this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
        this.a.finish();
    }
}
