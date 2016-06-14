package com.clilystudio.netbook.reader;

final class T implements Runnable {
    private /* synthetic */ Reader$Type a;
    private /* synthetic */ Reader b;

    T(Reader reader, Reader$Type type) {
        this.b = reader;
        this.a = type;
    }

    @Override
    public final void run() {
        ae ae2 = this.a.getListener(this.b);
        if (ae2 != null) {
            ae2.b();
        }
    }
}
