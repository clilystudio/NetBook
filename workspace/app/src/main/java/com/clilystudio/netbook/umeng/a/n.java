
package com.clilystudio.netbook.umeng.a;

public abstract class n implements Runnable {

    public abstract void a();

    public void run()
    {
        try
        {
            a();
        }
        catch( Throwable Throwable1 )
        {
            Throwable1.printStackTrace();
            return;
        }
    }
}
