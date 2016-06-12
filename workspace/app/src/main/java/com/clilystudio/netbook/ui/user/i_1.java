
package com.clilystudio.netbook.ui.user;

import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.DeleteResult;

final class i extends com.clilystudio.netbook.a.e {

    i(ChargeActivity ChargeActivity1, byte byte2)
    {
        this( ChargeActivity1 );
    }

    private ChargeActivity a;

    private i(ChargeActivity ChargeActivity1)
    {
        a = ChargeActivity1;
    }

    private transient DeleteResult a()
    {
        DeleteResult DeleteResult3;

        try
        {
            com.clilystudio.netbook.api.b.a();
            DeleteResult3 = com.clilystudio.netbook.api.b.b().e( ChargeActivity.c( a ), am.e().getToken() );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return DeleteResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }
}
