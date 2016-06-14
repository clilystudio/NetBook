package com.clilystudio.netbook.reader;

final class R implements Runnable {
    private /* synthetic */ Reader$Type a;
    private /* synthetic */ Reader b;

    R(Reader reader, Reader$Type type) {
        this.b = reader;
        this.a = type;
    }

    @Override
    public final void run() {
        ae ae2 = this.a.getListener(this.b);
        if (ae2 != null) {
            ae2.a();
        }
    }
}
