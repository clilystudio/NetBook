package com.clilystudio.netbook.umeng.a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public final class m {

    private static ExecutorService a = Executors.newSingleThreadExecutor();
    private static long b = 5L;
    private static ExecutorService c = Executors.newSingleThreadExecutor();

    public static void a() {
        try {
            if (!a.isShutdown())
                a.shutdown();
            if (!c.isShutdown())
                c.shutdown();
            a.awaitTermination(b, TimeUnit.SECONDS);
            c.awaitTermination(b, TimeUnit.SECONDS);
        } catch (Exception Exception1) {
            return;
        }
    }

    public static void a(Runnable Runnable1) {
        if (a.isShutdown())
            a = Executors.newSingleThreadExecutor();
        a.execute(Runnable1);
    }

    public static void b(Runnable Runnable1) {
        if (c.isShutdown())
            c = Executors.newSingleThreadExecutor();
        c.execute(Runnable1);
    }
}
