
package com.clilystudio.netbook.pay.weixin;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.WXPayOrder;
import com.clilystudio.netbook.model.WXPayOrder$PayOrder;
import java.io.IOException;

public final class b extends com.clilystudio.netbook.a.c {

    public b(a a1, Activity Activity2, String String3)
    {
        super( Activity2, String3 );
        a = a1;
    }

    private a a;

    private static transient WXPayOrder a(ChargePlan[] ChargePlan_1darray1)
    {
        String String2 = am.e().getToken();
        WXPayOrder WXPayOrder5;

        try
        {
            com.clilystudio.netbook.api.b.a();
            WXPayOrder5 = com.clilystudio.netbook.api.b.b().b( String2, ChargePlan_1darray1[0].get_id() );
        }
        catch( IOException IOException3 )
        {
            return null;
        }
        return WXPayOrder5;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (ChargePlan[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        WXPayOrder WXPayOrder2 = (WXPayOrder) Object1;

        if( WXPayOrder2 != null && WXPayOrder2.isOk() )
        {
            Object Object3 = new com.e.a.a.f.a();
            WXPayOrder$PayOrder PayOrder4 = WXPayOrder2.getPayOrder();
            a a5;
            String String6;

            ((com.e.a.a.f.a) Object3).a = PayOrder4.getAppid();
            ((com.e.a.a.f.a) Object3).b = PayOrder4.getPartnerid();
            ((com.e.a.a.f.a) Object3).c = PayOrder4.getPrepayid();
            ((com.e.a.a.f.a) Object3).f = PayOrder4.getXpackage();
            ((com.e.a.a.f.a) Object3).d = PayOrder4.getNoncestr();
            ((com.e.a.a.f.a) Object3).e = PayOrder4.getTimestamp();
            ((com.e.a.a.f.a) Object3).g = PayOrder4.getSign();
            a5 = a;
            String6 = PayOrder4.getAppid();
            a5.a.a( String6 );
            a5.a.a( (com.e.a.a.d.a) Object3 );
            i.a().c( new z( WXPayOrder2.getOrderId() ) );
        }
        else
        {
            i.a().c( new y( false ) );
            com.clilystudio.netbook.util.e.a( a.a( a ), "\u53D1\u8D77\u652F\u4ED8\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5\u6216\u68C0\u67E5\u7F51\u7EDC\uFF01" );
        }
    }

    public final void onCancelled()
    {
        super.onCancelled();
        i.a().c( new y( false ) );
    }
}
