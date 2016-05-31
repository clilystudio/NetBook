package com.clilystudio.app.netbook.ui;

import android.util.Log;

import com.clilystudio.app.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class aA
        implements PlatformActionListener {
    aA(BookInfoActivity paramBookInfoActivity) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
        Log.i(BookInfoActivity.b_initContentView(), "onCancel");
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        e.c("share_book");
        Log.i(BookInfoActivity.b_initContentView(), "onComplete");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
        Log.i(BookInfoActivity.b_initContentView(), "onError");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aA
 * JD-Core Version:    0.6.2
 */