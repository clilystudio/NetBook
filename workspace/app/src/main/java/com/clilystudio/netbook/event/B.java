package com.clilystudio.netbook.event;

import com.clilystudio.netbook.model.Advert;

public final class B {
    private Advert a;
    private String b;

    public B(Advert paramAdvert, String paramString) {
        this.a = paramAdvert;
        this.b = paramString;
    }

    public final Advert a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }
}
