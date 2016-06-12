
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ResultStatus;

final class an extends Thread {

    an(String String1, String String2)
    {
        a = String1;
        b = String2;
    }

    private String a;
    private String b;

    public final void run()
    {
        try
        {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().w( a, b );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
