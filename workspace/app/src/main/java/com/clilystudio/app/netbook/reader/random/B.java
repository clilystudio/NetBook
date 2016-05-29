package com.clilystudio.app.netbook.reader.random;

import android.content.DialogInterface;

final class B
        implements DialogInterface.OnClickListener {
    B(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderRandomActivity.e(this.a);
        b.a(this.a, "random_reader_quit_choice", "add_shelf");
        b.a(this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
        this.a.finish();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.B
 * JD-Core Version:    0.6.2
 */