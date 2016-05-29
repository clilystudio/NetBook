package com.clilystudio.app.netbook.util;

import android.os.Bundle;
import android.os.Message;

final class ah
        implements Handler.Callback {
    public final boolean handleMessage(Message paramMessage) {
        Bundle localBundle = paramMessage.getData();
        int i = localBundle.getInt("postCount");
        String str = localBundle.getString("bookId");
        if (ag.a().containsKey(str)) {
            ((ai) ag.a().remove(str)).a(str, i);
            ag.b().put(str, Integer.valueOf(i));
        }
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.ah
 * JD-Core Version:    0.6.2
 */