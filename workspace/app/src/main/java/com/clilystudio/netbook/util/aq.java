
package com.clilystudio.netbook.util;

import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.PostPublish;

final class aq extends Thread {

    aq(String String1, String String2, String String3)
    {
        a = String1;
        b = String2;
        c = String3;
    }

    private String a;
    private String b;
    private String c;

    public final void run()
    {
        try
        {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().b( am.e().getToken(), a, b, c );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
