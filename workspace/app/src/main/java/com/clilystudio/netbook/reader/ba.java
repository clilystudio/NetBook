package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class ba implements PlatformActionListener {
    ba(ReaderActivity readerActivity) {
    }

    @Override
    public final void onCancel(Platform platform, int n) {
    }

    @Override
    public final void onComplete(Platform platform, int n, HashMap<String, Object> hashMap) {
        e.c("share_book");
    }

    @Override
    public final void onError(Platform platform, int n, Throwable throwable) {
    }
}