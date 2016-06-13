package com.clilystudio.netbook.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

final class ah
        implements Handler.Callback {
    ah() {
    }

    @Override
    public final boolean handleMessage(Message message) {
        Bundle bundle = message.getData();
        int n = bundle.getInt("postCount");
        String string = bundle.getString("bookId");
        if (ag.a().containsKey(string)) {
            ((ai) ag.a().remove(string)).a(string, n);
            ag.b().put(string, n);
        }
        return true;
    }
}
