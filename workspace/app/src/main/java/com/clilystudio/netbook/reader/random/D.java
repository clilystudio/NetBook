package com.clilystudio.netbook.reader.random;

final class D implements Runnable {

    private ReaderRandomActivity a;

    D(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void run() {
        ReaderRandomActivity.w(a);
    }
}
