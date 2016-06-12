package com.clilystudio.netbook.reader;

final class aY implements Runnable {

    private ReaderActivity a;

    aY(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void run() {
        ReaderActivity.ae(a);
    }
}
