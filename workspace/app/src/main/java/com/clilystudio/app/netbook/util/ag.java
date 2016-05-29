package com.clilystudio.app.netbook.util;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import com.clilystudio.app.netbook.api.ApiService;

import java.util.concurrent.ConcurrentHashMap;

public final class ag {
    private static ag a;
    private static Handler[] b;
    private static int c;
    private static ApiService d;
    private static Handler e;
    private static ConcurrentHashMap<String, ai> f = new ConcurrentHashMap();
    private static ConcurrentHashMap<String, Integer> g = new ConcurrentHashMap();
    private static Handler.Callback h = new ah();

    public static ag a(Context paramContext) {
        if (a == null)
            a = new ag();
        e = new Handler(paramContext.getMainLooper(), h);
        b.a();
        d = b.b();
        b = new Handler[3];
        for (int i = 0; i < 3; i++) {
            aj localaj = new aj("PostCountWorker" + i);
            localaj.start();
            b[i] = new Handler(localaj.getLooper(), localaj);
        }
        return a;
    }

    public final void a(String paramString, ai paramai) {
        if (g.containsKey(paramString))
            paramai.a(paramString, ((Integer) g.get(paramString)).intValue());
        while (f.containsKey(paramString))
            return;
        f.put(paramString, paramai);
        Handler[] arrayOfHandler = b;
        int i = c;
        c = i + 1;
        Handler localHandler = arrayOfHandler[(i % b.length)];
        Message localMessage = Message.obtain(localHandler);
        Bundle localBundle = new Bundle();
        localBundle.putString("bookId", paramString);
        localMessage.setData(localBundle);
        localHandler.sendMessage(localMessage);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.ag
 * JD-Core Version:    0.6.2
 */