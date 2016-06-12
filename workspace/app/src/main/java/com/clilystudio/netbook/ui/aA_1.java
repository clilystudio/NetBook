package com.clilystudio.netbook.ui;

import android.util.Log;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class aA implements PlatformActionListener {

    aA(BookInfoActivity BookInfoActivity1) {
    }

    public final void onCancel(Platform Platform1, int int2) {
        Log.i(BookInfoActivity.b(), "onCancel");
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3) {
        e.c("share_book");
        Log.i(BookInfoActivity.b(), "onComplete");
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3) {
        Log.i(BookInfoActivity.b(), "onError");
    }
}
