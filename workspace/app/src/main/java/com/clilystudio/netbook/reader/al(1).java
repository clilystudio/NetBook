package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.util.e;
import com.iflytek.cloud.InitListener;

final class al
        implements InitListener {
    al(ReaderActivity paramReaderActivity) {
    }

    public final void onInit(int paramInt) {
        if (paramInt != 0)
            e.a(this.a, "初始化语音组件失败,请退出后重试");
    }
}

