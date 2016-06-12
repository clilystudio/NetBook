
package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.AsyncTask;
import android.support.design.widget.am;
import android.view.View;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;

final class O implements DialogInterface$OnClickListener {

    O(N N1)
    {
        a = N1;
    }

    private N a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        S S3 = new S( a.c );
        String[] String_1darray4 = new String[2];

        String_1darray4[0] = am.e().getToken();
        String_1darray4[1] = a.b.get_id();
        S3.execute( String_1darray4 );
        G.a( a.c, a.a.q );
        G.d( a.c, a.b );
    }
}
