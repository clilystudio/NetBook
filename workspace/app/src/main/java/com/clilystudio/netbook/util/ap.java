
package com.clilystudio.netbook.util;

import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.PostPublish;

final class ap extends Thread {

    ap(String String1, String String2)
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
            com.clilystudio.netbook.api.b.b().e( am.e().getToken(), a, b );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
