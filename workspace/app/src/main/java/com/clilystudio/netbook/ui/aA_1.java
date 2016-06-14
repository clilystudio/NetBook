package com.clilystudio.netbook.ui;

import android.util.Log;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class aA implements PlatformActionListener {
    aA(BookInfoActivity bookInfoActivity) {
    }

    @Override
    public final void onCancel(Platform platform, int n) {
        Log.i(BookInfoActivity.b(), "onCancel");
    }

    @Override
    public final void onComplete(Platform platform, int n, HashMap<String, Object> hashMap) {
        e.c("share_book");
        Log.i(BookInfoActivity.b(), "onComplete");
    }

    @Override
    public final void onError(Platform platform, int n, Throwable throwable) {
        Log.i(BookInfoActivity.b(), "onError");
    }
}
