package com.clilystudio.netbook.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

import com.clilystudio.netbook.model.PostCountRoot;

final class PostCountWorker extends HandlerThread implements Handler.Callback {
    public PostCountWorker(String name) {
        super(name);
    }

    @Override
    public final boolean handleMessage(Message message) {
        String string = message.getData().getString("bookId");
        try {
            PostCountRoot postCountRoot = ag.c().c(string);
            Message message2 = Message.obtain(ag.d());
            Bundle bundle = new Bundle();
            bundle.putInt("postCount", postCountRoot.getPostCount());
            bundle.putString("bookId", string);
            message2.setData(bundle);
            ag.d().sendMessage(message2);
            return true;
        } catch (Exception var3_6) {
            var3_6.printStackTrace();
            return false;
        }
    }
}
