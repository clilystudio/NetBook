
package com.clilystudio.netbook.pay.b;

import android.content.Context;
import android.widget.Toast;
import com.clilystudio.netbook.hpay100.z;
import com.clilystudio.netbook.event.i;

class b implements com.clilystudio.netbook.hpay100.y {

    b(a a1, byte byte2)
    {
        this( a1 );
    }

    final a a = null;

    private b(a a1)
    {
        a = a1;
    }

    public void a(z z1)
    {
        com.squareup.a.b b2 = i.a();
        boolean boolean3;

        if( z1.a() == 1 )
            boolean3 = true;
        else
            boolean3 = false;
        b2.c( new com.clilystudio.netbook.event.y( boolean3 ) );
        switch( z1.a() )
        {
            case 1:
                Toast.makeText( a.a( a ), (CharSequence) "\u8BA2\u5355\u63D0\u4EA4\u6210\u529F", 1 ).show();
                com.clilystudio.netbook.umeng.a.b.a( a.a( a ), "charge_complete", "youyifupay" );
                return;
            case 2:
                if( !z1.b() )
                {
                    com.clilystudio.netbook.umeng.a.b.a( a.a( a ), "charge_money_failed", "youyifupay" );
                    Toast.makeText( a.a( a ), (CharSequence) "\u975E\u5E38\u62B1\u6B49\uFF0C\u60A8\u7684\u624B\u673A\u53F7\u6240\u5728\u5730\u533A\u6682\u4E0D\u652F\u6301\u8BDD\u8D39\u5145\u503C\uFF0C\u8BF7\u60A8\u9009\u62E9\u5176\u4ED6\u5145\u503C\u65B9\u5F0F\uFF01", 1 ).show();
                    return;
                }
            default:
                return;
            case 3:
                com.clilystudio.netbook.umeng.a.b.a( a.a( a ), "charge_money_cancel", "youyifupay" );
                Toast.makeText( a.a( a ), (CharSequence) "\u652F\u4ED8\u53D6\u6D88", 1 ).show();
                return;
        }
    }
}
