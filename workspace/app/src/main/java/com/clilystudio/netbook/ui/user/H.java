
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.os.AsyncTask;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PayChargeRecord$Order;
import com.clilystudio.netbook.model.PayResult;
import com.clilystudio.netbook.util.e;
import java.io.IOException;

final class H extends c {

    public H(PayAccountActivity PayAccountActivity1, Activity Activity2, String String3)
    {
        super( Activity2, String3 );
        a = PayAccountActivity1;
    }

    private PayAccountActivity a;

    private transient PayResult a(String[] String_1darray1)
    {
        PayResult PayResult3;

        try
        {
            PayResult3 = com.clilystudio.netbook.api.b.b().a( String_1darray1[0], PayAccountActivity.a( a ) );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return PayResult3;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        PayResult PayResult2 = (PayResult) Object1;

        if( PayResult2 != null && PayResult2.getChargeOrder() != null && PayResult2.getChargeOrder().isCompleted() )
        {
            I I3 = new I( a, (Activity) a, "\u6B63\u5728\u66F4\u65B0\u8D44\u4EA7\u4FE1\u606F..." );
            String[] String_1darray4 = new String[1];

            String_1darray4[0] = PayAccountActivity.a( a );
            I3.b( String_1darray4 );
        }
        else
            e.a( (Activity) a, "\u672A\u67E5\u5230\u652F\u4ED8\u7ED3\u679C\uFF0C\u8BF7\u7A0D\u5019\u66F4\u65B0" );
    }
}
