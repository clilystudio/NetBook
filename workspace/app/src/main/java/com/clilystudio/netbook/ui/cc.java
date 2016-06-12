
package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class cc implements DialogInterface$OnClickListener {

    cc(cb cb1)
    {
        a = cb1;
    }

    private cb a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        int int3 = 0;

        switch( int2 )
        {
            case 1197:
                int3 = 1;
                break;
            case 1201:
                int3 = 2;
                break;
            case 1198:
                int3 = 3;
                break;
            case 1199:
                int3 = 4;
                break;
            case 1202:
                int3 = 5;
                break;
            case 1200:
            default:
                break;
        }
        if( cb.a( a ) != null )
            cb.a( a ).a( int3 );
    }
}
