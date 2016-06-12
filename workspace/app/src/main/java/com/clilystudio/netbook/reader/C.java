
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PayBalance;
import java.io.IOException;

final class C extends c {

    public C(o o1, Activity Activity2, String String3)
    {
        super( Activity2, String3 );
        a = o1;
    }

    private o a;

    private static transient PayBalance a(String[] String_1darray1)
    {
        PayBalance PayBalance4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            PayBalance4 = com.clilystudio.netbook.api.b.b().b( String_1darray1[0] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return PayBalance4;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        PayBalance PayBalance2 = (PayBalance) Object1;

        if( PayBalance2 != null && PayBalance2.isOk() )
        {
            com.clilystudio.netbook.hpay100.a.a.b( (Context) o.a( a ), "user_account_balance", PayBalance2.getBalance() + PayBalance2.getVoucherBalance() );
            o.b( a, true );
            a.e();
            o.b( a, false );
        }
        else
            com.clilystudio.netbook.util.e.a( o.a( a ), "\u83B7\u53D6\u4F59\u989D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u8DEF\u540E\u91CD\u8BD5" );
    }
}
