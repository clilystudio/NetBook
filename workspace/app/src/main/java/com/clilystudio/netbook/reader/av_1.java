package com.clilystudio.netbook.reader;

final class av implements db {
    private /* synthetic */ ReaderActivity a;

    av(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a() {
        this.a.startActivityForResult(ReaderOptionActivity.a(this.a), 0);
    }
}
