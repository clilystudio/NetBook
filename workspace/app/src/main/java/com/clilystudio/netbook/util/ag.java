package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.PostCountRoot;

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
            PostCountWorker aj2 = new PostCountWorker("PostCountWorker" + i);
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

    public interface onPostCountChangeListener {
        void a(String var1, int var2);
    }

    static final class PostCountWorker extends HandlerThread implements Handler.Callback {
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
}
