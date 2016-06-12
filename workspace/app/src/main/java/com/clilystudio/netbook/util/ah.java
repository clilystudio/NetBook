package com.clilystudio.netbook.util;

import android.os.Bundle;
import android.os.Handler$Callback;
import android.os.Message;

final class ah implements Handler$Callback {

    public final boolean handleMessage(Message Message1) {
        Bundle Bundle2 = Message1.getData();
        int int3 = Bundle2.getInt("postCount");
        String String4 = Bundle2.getString("bookId");

        if (ag.a().containsKey(String4)) {
            ((ai) ag.a().remove(String4)).a(String4, int3);
            ag.b().put(String4, Integer.valueOf(int3));
        }
        return true;
    }
}
