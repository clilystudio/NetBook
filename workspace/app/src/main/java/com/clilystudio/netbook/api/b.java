package com.clilystudio.netbook.api;

public final class b {
    private static b a = null;
    private static ApiService b = null;

    private b() {
    }

    public static b a() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    public static ApiService b() {
        if (b == null) {
            b = new ApiService(f.getInstance());
        }
        return b;
    }
}
