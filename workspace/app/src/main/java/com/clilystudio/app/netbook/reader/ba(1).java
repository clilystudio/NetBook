package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class ba
        implements PlatformActionListener {
    ba(ReaderActivity paramReaderActivity) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        e.c("share_book");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ba
 * JD-Core Version:    0.6.2
 */