package com.clilystudio.netbook.event;

public final class c
        extends e {
    private boolean a = true;

    public c(String string) {
        super(string);
    }

    public c(String string, boolean bl) {
        super(string);
        this.a = false;
    }

    public final boolean a() {
        return this.a;
    }
}
