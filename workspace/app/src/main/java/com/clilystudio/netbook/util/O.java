
package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class O implements DialogInterface$OnClickListener {

    O(N N1, boolean boolean2, String String3, String String4)
    {
        d = N1;
        a = boolean2;
        b = String3;
        c = String4;
    }

    private boolean a;
    private String b;
    private String c;
    private N d;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        String String3 = String.valueOf( int2 + 1 );

        e.a( N.a( d ), 2131034431 );
        if( !a )
        {
            if( b == null )
                new an( c, String3 ).start();
            else
                new ao( c, b, String3 ).start();
        }
        else if( b == null )
            new ap( c, String3 ).start();
        else
            new aq( c, b, String3 ).start();
    }
}
