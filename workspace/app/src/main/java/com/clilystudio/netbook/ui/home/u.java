
package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.reader.txt.U;
import java.io.FileNotFoundException;

final class u extends Thread {

    u(HomeShelfFragment HomeShelfFragment1, String String2)
    {
        a = String2;
    }

    private String a;

    public final void run()
    {
        try
        {
            String String2 = U.b( a );

            com.clilystudio.netbook.hpay100.a.a.F( new StringBuilder().append( c.d ).append( String2 ).toString() );
        }
        catch( FileNotFoundException FileNotFoundException1 )
        {
            FileNotFoundException1.printStackTrace();
            return;
        }
    }
}
