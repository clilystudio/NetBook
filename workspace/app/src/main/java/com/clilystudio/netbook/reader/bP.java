
package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class bP implements View$OnClickListener {

    bP(ReaderOptionActivity ReaderOptionActivity1, AlertDialog AlertDialog2, int int3)
    {
        c = ReaderOptionActivity1;
        a = AlertDialog2;
        b = int3;
    }

    private AlertDialog a;
    private int b;
    private ReaderOptionActivity c;

    public final void onClick(View View1)
    {
        a.dismiss();
        if( ReaderOptionActivity.b( c ) != b )
        {
            ReaderOptionActivity.a( c, b );
            ReaderOptionActivity.d( c ).setText( (CharSequence) ReaderOptionActivity.c( c )[b] );
            com.clilystudio.netbook.hpay100.a.a.b( (Context) c, "reader_screen_off_time", ReaderOptionActivity.e( c )[b] );
        }
    }
}
