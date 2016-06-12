
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

final class am extends Thread {

    am(Account Account1, String String2)
    {
        a = Account1;
        b = String2;
    }

    private Account a;
    private String b;

    public final void run()
    {
        try
        {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().x( a.getToken(), b );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
