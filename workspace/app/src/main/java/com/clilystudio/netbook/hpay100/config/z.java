
package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.os.Handler;
import com.clilystudio.netbook.hpay100.y;

final class z implements f {

    z(HPaySMS HPaySMS1, y y2, Context Context3, int int4, Handler Handler5)
    {
        a = HPaySMS1;
        b = y2;
        c = Context3;
        d = int4;
        e = Handler5;
    }

    HPaySMS a;     // final access specifier removed
    private y b;     // final access specifier removed
    private Context c;     // final access specifier removed
    private int d;     // final access specifier removed
    private Handler e;     // final access specifier removed

    public final void a(int int1)
    {
        if( int1 == 1 )
        {
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "sms send success" );
            if( b != null )
            {
                com.clilystudio.netbook.hpay100.z z6 = a.a( a );

                b.a( z6 );
            }
            a.c( c, a.mOrderidAPP, a.mOrderidHR, a.mScheme, a.mPayId, a.mChType, a.mChID, a.mAmount, "1", "", d );
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "mSendIndex:" ).append( HPaySMS.access$0( a ) ).toString() );
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "mSMSAddress.length:" ).append( a.mSMSAddress.length ).toString() );
            try
            {
                if( HPaySMS.access$0( a ) < a.mSMSAddress.length && e != null )
                    e.postDelayed( (Runnable) new A( this ), (long) (1000 * a.mIntervalTimes) );
            }
            catch( Exception Exception4 )
            {
                Exception4.printStackTrace();
            }
            l.c( c.getApplicationContext() );
        }
        else
        {
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "sms send failed" );
            if( int1 == 2 )
            {
                com.clilystudio.netbook.hpay100.z z3 = a.a( a, 6104, "\u77ED\u4FE1\u53D1\u9001\u8D85\u65F6" );

                if( b != null )
                    b.a( z3 );
                a.c( c, a.mOrderidAPP, a.mOrderidHR, a.mScheme, a.mPayId, a.mChType, a.mChID, a.mAmount, "2", "6104", d );
            }
            else
            {
                com.clilystudio.netbook.hpay100.z z2 = a.a( a, 6101, "\u77ED\u4FE1\u53D1\u9001\u5931\u8D25" );

                if( b != null )
                    b.a( z2 );
                a.c( c, a.mOrderidAPP, a.mOrderidHR, a.mScheme, a.mPayId, a.mChType, a.mChID, a.mAmount, "2", "6101", d );
            }
            l.a( c.getApplicationContext(), 1 );
        }
    }
}
