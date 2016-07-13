package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.ApiServiceProvider;

import java.util.concurrent.ConcurrentHashMap;

public final class ag {
    private static ag a;
    private static Handler[] b;
    private static int c;
    private static ApiService d;
    private static Handler e;
    private static ConcurrentHashMap<String, onPostCountChangeListener> f = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Integer> g = new ConcurrentHashMap<>();
    private static Handler.Callback h = new Handler.Callback() {

        @Override
        public boolean handleMessage(Message msg) {
            Bundle bundle = msg.getData();
            int n = bundle.getInt("postCount");
            String string = bundle.getString("bookId");
            if (ag.a().containsKey(string)) {
                ag.a().remove(string).a(string, n);
                ag.b().put(string, n);
            }
            return true;
        }
    };

    private ag() {
    }

    public static ag a(Context context) {
        if (a == null) {
            a = new ag();
        }
        e = new Handler(context.getMainLooper(), h);
        ApiServiceProvider.getInstance();
        d = ApiServiceProvider.getApiService();
        b = new Handler[3];
        for (int i = 0; i < 3; ++i) {
            aj aj2 = new aj("PostCountWorker" + i);
            aj2.start();
            ag.b[i] = new Handler(aj2.getLooper(), aj2);
        }
        return a;
    }

    static /* synthetic */ ConcurrentHashMap<String, onPostCountChangeListener> a() {
        return f;
    }

    static /* synthetic */ ConcurrentHashMap<String, Integer> b() {
        return g;
    }

    static /* synthetic */ ApiService c() {
        return d;
    }

    static /* synthetic */ Handler d() {
        return e;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(String string, onPostCountChangeListener ai2) {
        if (g.containsKey(string)) {
            ai2.a(string, g.get(string));
        } else if (!f.containsKey(string)) {
            f.put(string, ai2);
            Handler[] arrhandler = b;
            int n = c;
            c = n + 1;
            Handler handler = arrhandler[n % b.length];
            Message message = Message.obtain(handler);
            Bundle bundle = new Bundle();
            bundle.putString("bookId", string);
            message.setData(bundle);
            handler.sendMessage(message);
        }
    }
}
