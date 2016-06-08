package com.clilystudio.netbook.event;

public final class c extends e {
    private boolean a = true;

    public c(String paramString) {
        super(paramString);
    }

    public c(String paramString, boolean paramBoolean) {
        super(paramString);
        this.a = false;
    }

    public final boolean a() {
        return this.a;
    }
}

