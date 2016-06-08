package com.clilystudio.netbook.reader;

final class R_Clz
        implements Runnable {
    R_Clz(Reader paramReader, Reader.Type paramType) {
    }

    public final void run() {
        ae localae = this.a.getListener(this.b);
        if (localae != null)
            localae.a();
    }
}

