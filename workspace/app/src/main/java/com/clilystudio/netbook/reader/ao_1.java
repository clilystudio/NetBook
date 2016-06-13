package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.iflytek.cloud.SpeechUtility;

final class ao
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    ao(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        String string;
        ReaderActivity.a = string = SpeechUtility.getUtility().getComponentUrl();
        a.a(string, this.a, "\u6717\u8bfb\u63d2\u4ef6");
    }
}
