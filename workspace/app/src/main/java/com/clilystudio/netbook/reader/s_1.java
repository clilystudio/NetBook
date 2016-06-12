
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.CheckBox;
import com.clilystudio.netbook.model.Account;

final class s implements View$OnClickListener {

    s(o o1, CheckBox CheckBox2)
    {
        b = o1;
        a = CheckBox2;
    }

    private CheckBox a;
    private o b;

    public final void onClick(View View1)
    {
        I I2;
        String[] String_1darray3;

        com.clilystudio.netbook.umeng.a.b.a( (Context) o.a( b ), "paying_page_purchase", com.clilystudio.netbook.util.I.b );
        if( a.isChecked() )
            com.clilystudio.netbook.umeng.a.b.a( (Context) o.a( b ), "paying_page_auto_choose", com.clilystudio.netbook.util.I.b );
        o.a( b, false );
        com.clilystudio.netbook.hpay100.a.a.b( (Context) o.a( b ), new StringBuilder( "auto_buy_chapter" ).append( com.clilystudio.netbook.util.I.a ).toString(), a.isChecked() );
        I2 = new I( b, o.a( b ), "\u8D2D\u4E70\u4E2D..." );
        String_1darray3 = new String[2];
        String_1darray3[0] = am.e().getToken();
        String_1darray3[1] = o.b( b ).a().getId();
        I2.b( String_1darray3 );
    }
}
