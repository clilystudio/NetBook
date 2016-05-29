package com.clilystudio.app.netbook.api;

public final class b {
    private static b a = null;
    private static ApiService b = null;

    public static b a() {
        if (a == null)
            a = new b();
        return a;
    }

    public static ApiService b() {
        if (b == null)
            b = new ApiService(f.a());
        return b;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.api.b
 * JD-Core Version:    0.6.2
 */