package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

import com.arcsoft.hpay100.a.a;
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

