package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.iflytek.cloud.SpeechUtility;

final class ao
        implements DialogInterface.OnClickListener {
    ao(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        String str = SpeechUtility.getUtility().getComponentUrl();
        ReaderActivity.a = str;
        a.a(str, this.a, "朗读插件");
    }
}

