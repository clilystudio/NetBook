package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.iflytek.cloud.SpeechUtility;

final class c
        implements DialogInterface.OnClickListener {
    c(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        String str = SpeechUtility.getUtility().getComponentUrl();
        ReaderTxtActivity.a = str;
        a.a(str, this.a, "朗读插件");
    }
}

