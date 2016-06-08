package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class A
        implements DialogInterface.OnClickListener {
    A(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        b.a(this.a, "random_reader_quit_choice", "quit");
        b.a(this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
        this.a.finish();
    }
}

