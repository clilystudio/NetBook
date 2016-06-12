
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.PurchaseVipResult;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.p;
import java.io.IOException;
import java.util.Date;

final class ak extends com.clilystudio.netbook.a.c {

    public ak(RemoveAdActivity RemoveAdActivity1, Activity Activity2, String String3)
    {
        super( Activity2, String3 );
        a = RemoveAdActivity1;
    }

    private RemoveAdActivity a;

    private transient PurchaseVipResult a(String[] String_1darray1)
    {
        PurchaseVipResult PurchaseVipResult3;

        try
        {
            PurchaseVipResult3 = com.clilystudio.netbook.api.b.b().t( String_1darray1[0], String_1darray1[1] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return PurchaseVipResult3;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        PurchaseVipResult PurchaseVipResult2 = (PurchaseVipResult) Object1;

        if( PurchaseVipResult2 != null && PurchaseVipResult2.isOk() )
        {
            e.a( (Activity) a, "\u8D2D\u4E70\u6210\u529F" );
            com.clilystudio.netbook.hpay100.a.a.b( (Context) a, "remove_ad_duration", PurchaseVipResult2.getDueInMs() );
            if( PurchaseVipResult2.getDueInMs() > 0L )
                i.a().c( new s( PurchaseVipResult2.getVipExpire() ) );
        }
        else if( PurchaseVipResult2.getCode().equals( "BALANCE_NOT_ENOUGH" ) )
        {
            e.a( (Activity) a, "\u4F59\u989D\u4E0D\u8DB3\uFF0C\u8BF7\u5145\u503C" );
            new p( (Activity) a ).a();
        }
        else
            e.a( (Activity) a, "\u672A\u8D2D\u4E70\u6210\u529F\uFF0C\u8BF7\u7A0D\u540E\u91CD\u8BD5" );
    }
}
