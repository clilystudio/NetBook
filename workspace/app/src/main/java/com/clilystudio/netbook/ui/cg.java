package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class cg
        implements PlatformActionListener {
    cg(ShareRemoveAdActivity paramShareRemoveAdActivity) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        e.a(this.a, "分享完成!");
        b.a(this.a, "share_remove_ad_count");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
    }
}

