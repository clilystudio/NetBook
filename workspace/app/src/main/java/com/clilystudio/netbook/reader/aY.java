package com.clilystudio.netbook.reader;

final class aY implements Runnable {
    private /* synthetic */ ReaderActivity a;

    aY(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void run() {
        ReaderActivity.ae(this.a);
    }
}
