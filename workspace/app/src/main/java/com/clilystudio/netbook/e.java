package com.clilystudio.netbook;

final class e
        extends Thread {
    private /* synthetic */ MyApplication a;

    e(MyApplication myApplication) {
        this.a = myApplication;
    }

    @Override
    public final void run() {
        MyApplication.a(this.a);
    }
}
