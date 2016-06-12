
package com.clilystudio.netbook.reader.txt;

final class E implements Runnable {

    E(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void run()
    {
        ReaderTxtActivity.M( a );
    }
}
