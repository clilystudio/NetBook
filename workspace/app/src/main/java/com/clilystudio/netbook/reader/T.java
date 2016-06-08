package com.clilystudio.netbook.reader;

final class T
        implements Runnable {
    T(Reader paramReader, Reader.Type paramType) {
    }

    public final void run() {
        ae localae = this.a.getListener(this.b);
        if (localae != null)
            localae.b();
    }
}

