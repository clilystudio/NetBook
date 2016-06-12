
package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.reader.ReaderTocDialog;

final class s implements DialogInterface$OnClickListener {

    s(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        ReaderTxtActivity.e( a, int2 );
        ReaderTxtActivity.K( a ).dismiss();
    }
}
