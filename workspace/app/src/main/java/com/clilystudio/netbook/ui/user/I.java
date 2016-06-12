
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PayBalance;
import com.clilystudio.netbook.widget.PaySectionItem;
import java.io.IOException;

final class I extends com.clilystudio.netbook.a.c {

    public I(PayAccountActivity PayAccountActivity1, Activity Activity2, String String3)
    {
        super( Activity2, String3 );
        a = PayAccountActivity1;
    }

    private PayAccountActivity a;

    public I(PayAccountActivity PayAccountActivity1, Activity Activity2)
    {
        super( Activity2 );
        a = PayAccountActivity1;
    }

    private transient PayBalance a(String[] String_1darray1)
    {
        PayBalance PayBalance3;

        try
        {
            PayBalance3 = com.clilystudio.netbook.api.b.b().b( String_1darray1[0] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return PayBalance3;
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
            PayAccountActivity.b( a ).setBalance( new StringBuilder().append( PayBalance2.getBalance() ).append( "\u679A" ).toString() );
            PayAccountActivity.c( a ).setBalance( new StringBuilder().append( PayBalance2.getVoucherBalance() ).append( "\u5F20" ).toString() );
        }
    }
}
