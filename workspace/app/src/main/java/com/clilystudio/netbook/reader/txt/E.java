package com.clilystudio.netbook.reader.txt;

final class E implements Runnable {

    private ReaderTxtActivity a;

    E(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void run() {
        ReaderTxtActivity.M(a);
    }
}
