package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.e;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class bp
        implements PlatformActionListener {
    bp(GirlTopicActivity paramGirlTopicActivity) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        e.c("share");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bp
 * JD-Core Version:    0.6.2
 */