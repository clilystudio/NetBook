package com.clilystudio.netbook.reader.txt;

import android.app.Activity;

import com.iflytek.cloud.InitListener;

final class e implements InitListener {
    private /* synthetic */ ReaderTxtActivity a;

    e(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onInit(int n2) {
        if (n2 != 0) {
            com.clilystudio.netbook.util.e.a((Activity) this.a, "\u521d\u59cb\u5316\u8bed\u97f3\u7ec4\u4ef6\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
        }
    }
}
