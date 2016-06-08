package com.clilystudio.netbook.reader;

final class R
        implements Runnable {
    R(Reader paramReader, Reader.Type paramType) {
    }

    public final void run() {
        ae localae = this.a.getListener(this.b);
        if (localae != null)
            localae.a();
    }
}

