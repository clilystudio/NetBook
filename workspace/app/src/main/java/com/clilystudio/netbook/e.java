package com.clilystudio.netbook;

final class e extends Thread {

    private MyApplication a;

    e(MyApplication MyApplication1) {
        a = MyApplication1;
    }

    public final void run() {
        MyApplication.a(a);
    }
}
