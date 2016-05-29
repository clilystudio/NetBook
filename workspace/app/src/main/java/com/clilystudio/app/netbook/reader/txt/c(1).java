package com.clilystudio.app.netbook.reader.txt;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.c
 * JD-Core Version:    0.6.2
 */