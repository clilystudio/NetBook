
package com.clilystudio.netbook.hpay100.web;

import android.content.Context;
import android.text.TextUtils;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.j;

final class h implements j {

    h(HPayWebActivity HPayWebActivity1)
    {
        a = HPayWebActivity1;
    }

    private HPayWebActivity a;

    public final void a()
    {
        String String1 = "";

        try
        {
            Object Object3;

            if( HPayWebActivity.f( a ) != null )
                String1 = HPayWebActivity.f( a ).mYzmRegx;
            Object3 = com.clilystudio.netbook.hpay100.c.b.a( a.getApplicationContext(), String1 );
            if( !android.text.TextUtils.isEmpty( (CharSequence) Object3 ) && HPayWebActivity.e( a ) != null )
            {
                com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "change yzm11:" ).append( (String) Object3 ).toString() );
                HPayWebActivity.e( a ).loadUrl( new StringBuilder( "javascript:hpay_func.inputVerifyCode('" ).append( (String) Object3 ).append( "')" ).toString() );
                com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "change yzm22:" ).append( (String) Object3 ).toString() );
                HPayWebActivity.e( a ).loadUrl( new StringBuilder( "javascript:IYUE.returVerifyCode('" ).append( (String) Object3 ).append( "')" ).toString() );
            }
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return;
        }
    }
}
