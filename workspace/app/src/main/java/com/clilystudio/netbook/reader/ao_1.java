package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.iflytek.cloud.SpeechUtility;

final class ao implements DialogInterface$OnClickListener {

    private ReaderActivity a;

    ao(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        String String3 = SpeechUtility.getUtility().getComponentUrl();

        ReaderActivity.a = String3;
        com.clilystudio.netbook.hpay100.a.a.a(String3, (Activity) a, "\u6717\u8BFB\u63D2\u4EF6");
    }
}
