package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.os.Message;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class e
        implements PlatformActionListener {
    private /* synthetic */ Handler a;

    e(AuthLoginActivity authLoginActivity, Handler handler) {
        this.a = handler;
    }

    @Override
    public final void onCancel(Platform platform, int n) {
        Message message = new Message();
        message.arg1 = 3;
        message.arg2 = n;
        message.obj = platform;
        this.a.sendMessage(message);
    }

    @Override
    public final void onComplete(Platform platform, int n, HashMap<String, Object> hashMap) {
        Message message = new Message();
        message.arg1 = 1;
        message.arg2 = n;
        message.obj = platform;
        this.a.sendMessage(message);
    }

    @Override
    public final void onError(Platform platform, int n, Throwable throwable) {
        throwable.printStackTrace();
        Message message = new Message();
        message.arg1 = 2;
        message.arg2 = n;
        message.obj = platform;
        this.a.sendMessage(message);
    }
}
