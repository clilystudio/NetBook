package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.os.Message;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class e
        implements PlatformActionListener {
    e(AuthLoginActivity paramAuthLoginActivity, Handler paramHandler) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
        Message localMessage = new Message();
        localMessage.arg1 = 3;
        localMessage.arg2 = paramInt;
        localMessage.obj = paramPlatform;
        this.a.sendMessage(localMessage);
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        Message localMessage = new Message();
        localMessage.arg1 = 1;
        localMessage.arg2 = paramInt;
        localMessage.obj = paramPlatform;
        this.a.sendMessage(localMessage);
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
        paramThrowable.printStackTrace();
        Message localMessage = new Message();
        localMessage.arg1 = 2;
        localMessage.arg2 = paramInt;
        localMessage.obj = paramPlatform;
        this.a.sendMessage(localMessage);
    }
}

