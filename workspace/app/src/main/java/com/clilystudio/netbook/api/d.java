package com.clilystudio.netbook.api;

import java.util.Calendar;
import java.util.Date;

public final class d {

    private String a;     // final access specifier removed
    private Date b;     // final access specifier removed
    public d(String String1, int int2) {
        Calendar Calendar3;

        a = String1;
        Calendar3 = Calendar.getInstance();
        Calendar3.add(13, int2);
        b = Calendar3.getTime();
    }

    public final String a() {
        return a;
    }

    public final Date b() {
        return b;
    }
}
