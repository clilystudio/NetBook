package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;

import com.umeng.a.b;
import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class cg implements PlatformActionListener {

    private ShareRemoveAdActivity a;

    cg(ShareRemoveAdActivity ShareRemoveAdActivity1) {
        a = ShareRemoveAdActivity1;
    }

    public final void onCancel(Platform Platform1, int int2) {
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3) {
        e.a((Activity) a, "\u5206\u4EAB\u5B8C\u6210!");
        b.a((Context) a, "share_remove_ad_count");
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3) {
    }
}
