
package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.c;
import java.io.File;

final class v extends Thread {

    v(HomeShelfFragment HomeShelfFragment1, String String2)
    {
        a = String2;
    }

    private String a;

    public final void run()
    {
        String String1 = a;

        com.clilystudio.netbook.hpay100.a.a.E( new StringBuilder().append( c.b ).append( File.separator ).append( String1 ).toString() );
    }
}
