
package com.clilystudio.netbook.reader.txt;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.iflytek.cloud.SpeechUtility;

final class c implements DialogInterface$OnClickListener {

    c(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        String String3 = SpeechUtility.getUtility().getComponentUrl();

        ReaderTxtActivity.a = String3;
        com.clilystudio.netbook.hpay100.a.a.a( String3, (Activity) a, "\u6717\u8BFB\u63D2\u4EF6" );
    }
}
