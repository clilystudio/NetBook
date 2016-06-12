package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class ac implements PlatformActionListener {

    ac(BookHelpActivity BookHelpActivity1) {
    }

    public final void onCancel(Platform Platform1, int int2) {
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3) {
        e.c("share");
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3) {
    }
}
