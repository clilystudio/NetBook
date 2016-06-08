package com.clilystudio.netbook.ui;

import android.util.Log;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class aA
        implements PlatformActionListener {
    aA(BookInfoActivity paramBookInfoActivity) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
        Log.i(BookInfoActivity.b(), "onCancel");
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        e.c("share_book");
        Log.i(BookInfoActivity.b(), "onComplete");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
        Log.i(BookInfoActivity.b(), "onError");
    }
}

