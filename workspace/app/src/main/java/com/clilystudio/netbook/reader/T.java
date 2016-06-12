package com.clilystudio.netbook.reader;

final class T implements Runnable {

    private Reader$Type a;
    private Reader b;
    T(Reader Reader1, Reader$Type Type2) {
        b = Reader1;
        a = Type2;
    }

    public final void run() {
        ae ae1 = a.getListener(b);

        if (ae1 != null)
            ae1.b();
    }
}
