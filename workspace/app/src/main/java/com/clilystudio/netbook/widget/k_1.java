
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

final class k implements DialogInterface$OnClickListener {

    k(j j1, String String2, Context Context3)
    {
        a = String2;
        b = Context3;
    }

    private String a;
    private Context b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) a ) )
        {
            Intent Intent3;

            com.clilystudio.netbook.umeng.a.b.a( b, "visit_17k_webpage" );
            Intent3 = new Intent( "android.intent.action.VIEW" );
            Intent3.setData( Uri.parse( a ) );
            b.startActivity( Intent3 );
        }
    }
}
