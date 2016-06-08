package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class dx
        implements PlatformActionListener {
    dx(TweetDetailActivity paramTweetDetailActivity) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        e.c("share");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
    }
}

