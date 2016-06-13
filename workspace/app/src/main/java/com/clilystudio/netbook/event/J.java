package com.clilystudio.netbook.event;

public final class J {
    private String a;
    private String b;
    private String c;
    private String d;
    private int e;

    public J(String string, String string2, String string3, int n, String string4) {
        this.a = string;
        this.b = string2;
        this.d = string4;
        this.c = string3;
        this.e = n;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.c;
    }

    public final int e() {
        return this.e;
    }
}
