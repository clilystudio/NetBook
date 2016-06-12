package com.clilystudio.netbook.reader.txt;

import android.app.Activity;

import com.iflytek.cloud.InitListener;

final class e implements InitListener {

    private ReaderTxtActivity a;

    e(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void onInit(int int1) {
        if (int1 != 0)
            com.clilystudio.netbook.util.e.a((Activity) a, "\u521D\u59CB\u5316\u8BED\u97F3\u7EC4\u4EF6\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
    }
}
