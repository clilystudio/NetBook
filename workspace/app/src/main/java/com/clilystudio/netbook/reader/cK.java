package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.util.e;

final class cK extends c {

    private int a;
    private ReaderWebActivity b;
    public cK(ReaderWebActivity ReaderWebActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034218);
        b = ReaderWebActivity1;
        a = int3;
    }

    private transient String a(String[] String_1darray1) {
        String String3;

        try {
            String3 = com.clilystudio.netbook.api.b.b().b(String_1darray1[0], a);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return String3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final volatile void a(Object Object1) {
        String String2 = (String) Object1;

        if (String2 != null)
            ReaderWebActivity.a(b, a, String2);
        else
            e.a((Activity) b, "\u8F7D\u5165\u5931\u8D25");
    }
}
