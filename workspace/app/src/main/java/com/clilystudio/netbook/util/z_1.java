
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.AppItem;
import java.io.IOException;

final class z implements Runnable {

    z(y y1, String String2)
    {
        b = y1;
        a = String2;
    }

    private String a;
    private y b;

    public final void run()
    {
        try
        {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().B( b.a.get_id(), a );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return;
        }
    }
}
