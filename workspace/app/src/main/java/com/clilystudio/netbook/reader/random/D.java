package com.clilystudio.netbook.reader.random;

final class D
        implements Runnable {
    private /* synthetic */ ReaderRandomActivity a;

    D(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void run() {
        ReaderRandomActivity.w(this.a);
    }
}
