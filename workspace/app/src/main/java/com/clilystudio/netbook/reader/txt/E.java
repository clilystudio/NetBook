package com.clilystudio.netbook.reader.txt;

final class E implements Runnable {
    private /* synthetic */ ReaderTxtActivity a;

    E(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void run() {
        ReaderTxtActivity.M(this.a);
    }
}
