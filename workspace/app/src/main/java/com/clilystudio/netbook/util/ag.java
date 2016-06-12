package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Message;

import com.clilystudio.netbook.api.ApiService;

import java.util.concurrent.ConcurrentHashMap;

public final class ag {

    private static ag a;
    private static Handler[] b;
    private static int c;
    private static ApiService d;
    private static Handler e;
    private static ConcurrentHashMap f = new ConcurrentHashMap();
    private static ConcurrentHashMap g = new ConcurrentHashMap();
    private static Handler$Callback h = new ah();

    public static ag a(Context Context1) {
        int int3;

        if (a == null)
            a = new ag();
        e = new Handler(Context1.getMainLooper(), h);
        com.clilystudio.netbook.api.b.a();
        d = com.clilystudio.netbook.api.b.b();
        b = new Handler[3];
        for (int3 = 0; int3 < 3; ++int3) {
            Object Object4 = new aj(new StringBuilder("PostCountWorker").append(int3).toString());

            ((aj) Object4).start();
            b[int3] = new Handler(((aj) Object4).getLooper(), (Handler$Callback) Object4);
        }
        return a;
    }

    static ConcurrentHashMap a() {
        return f;
    }

    static ConcurrentHashMap b() {
        return g;
    }

    static ApiService c() {
        return d;
    }

    static Handler d() {
        return e;
    }

    public final void a(String String1, ai ai2) {
        if (g.containsKey(String1))
            ai2.a(String1, ((Integer) g.get(String1)).intValue());
        else if (!f.containsKey(String1)) {
            Handler[] Handler_1darray4;
            int int5;
            Handler Handler6;
            Message Message7;
            Bundle Bundle8;

            f.put(String1, ai2);
            Handler_1darray4 = b;
            int5 = c;
            c = int5 + 1;
            Handler6 = Handler_1darray4[int5 % b.length];
            Message7 = Message.obtain(Handler6);
            Bundle8 = new Bundle();
            Bundle8.putString("bookId", String1);
            Message7.setData(Bundle8);
            Handler6.sendMessage(Message7);
            return;
        }
    }
}
