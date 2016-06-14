package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class cg implements PlatformActionListener {
    private /* synthetic */ ShareRemoveAdActivity a;

    cg(ShareRemoveAdActivity shareRemoveAdActivity) {
        this.a = shareRemoveAdActivity;
    }

    @Override
    public final void onCancel(Platform platform, int n) {
    }

    @Override
    public final void onComplete(Platform platform, int n, HashMap<String, Object> hashMap) {
        e.a((Activity) this.a, (String) "\u5206\u4eab\u5b8c\u6210!");
        b.a(this.a, "share_remove_ad_count");
    }

    @Override
    public final void onError(Platform platform, int n, Throwable throwable) {
    }
}
