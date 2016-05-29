package com.clilystudio.app.netbook.reader.txt;

import com.iflytek.cloud.InitListener;

final class e
        implements InitListener {
    e(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onInit(int paramInt) {
        if (paramInt != 0)
            com.clilystudio.app.netbook.util.e.a(this.a, "初始化语音组件失败,请退出后重试");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.e
 * JD-Core Version:    0.6.2
 */