
package com.clilystudio.netbook;

final class e extends Thread {

    e(MyApplication MyApplication1)
    {
        a = MyApplication1;
    }

    private MyApplication a;

    public final void run()
    {
        MyApplication.a( a );
    }
}
