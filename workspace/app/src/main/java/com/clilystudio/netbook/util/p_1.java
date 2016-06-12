
package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.clilystudio.netbook.model.ChargeType;
import com.clilystudio.netbook.model.PaySheetItem;
import com.clilystudio.netbook.ui.user.ChargeActivity;
import com.clilystudio.netbook.widget.ak;
import com.clilystudio.netbook.widget.am;
import java.util.List;

public final class p {

    public p(Activity Activity1)
    {
        a = Activity1;
    }

    private Activity a;

    static Activity a(p p1)
    {
        return p1.a;
    }

    static void a(p p1, PaySheetItem PaySheetItem2)
    {
        if( PaySheetItem2 != null )
        {
            if( "weixinpay".equals( PaySheetItem2.getChargeType().getType() ) && !com.clilystudio.netbook.pay.weixin.a.a( (Context) p1.a ) )
                e.a( p1.a, 2131034303 );
            else
            {
                Intent Intent3 = ChargeActivity.a( (Context) p1.a, PaySheetItem2.getChargeType() );

                p1.a.startActivity( Intent3 );
                com.clilystudio.netbook.umeng.a.b.a( (Context) p1.a, "enter_charge_channel", PaySheetItem2.getChargeType().getType() );
                return;
            }
        }
    }

    static void a(p p1, ChargeType[] ChargeType_1darray2)
    {
        List List3 = PaySheetItem.getItems( (Context) p1.a, ChargeType_1darray2 );

        if( !List3.isEmpty() )
        {
            int int4;

            for( int4 = 0; int4 < List3.size(); ++int4 )
                ((PaySheetItem) List3.get( int4 )).setId( int4 );
            new ak( p1.a, (am) new q( p1 ), List3 ).a().show();
        }
        else
            e.a( p1.a, "\u6CA1\u6709\u652F\u4ED8\u65B9\u5F0F\uFF0C\u8BF7\u8054\u7CFB\u5BA2\u670D" );
    }

    public final void a()
    {
        new r( this, a ).b( new Void[0] );
    }
}
