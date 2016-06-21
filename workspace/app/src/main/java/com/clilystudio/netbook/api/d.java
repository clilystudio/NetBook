package com.clilystudio.netbook.api;

import java.util.Calendar;
import java.util.Date;

public final class d {
    private final String a;
    private final Date b;

    public d(String string, int n) {
        this.a = string;
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.SECOND, n);
        this.b = calendar.getTime();
    }

    public final String a() {
        return this.a;
    }

    public final Date b() {
        return this.b;
    }
}
