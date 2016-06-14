package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

import com.iflytek.cloud.SpeechUtility;

final class c implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderTxtActivity a;

    c(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        String string;
        ReaderTxtActivity.a = string = SpeechUtility.getUtility().getComponentUrl();
        a.a(string, this.a, "\u6717\u8bfb\u63d2\u4ef6");
    }
}
