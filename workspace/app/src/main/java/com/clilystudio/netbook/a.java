package com.clilystudio.netbook;

import android.app.Activity;

import java.util.Iterator;
import java.util.Stack;

public final class a {

    private static Stack a;
    private static a b;

    public static a a() {
        if (b == null)
            b = new a();
        return b;
    }

    public static void a(Activity Activity1) {
        if (a == null)
            a = new Stack();
        a.add(Activity1);
    }

    public static void b() {
        if (a != null) {
            Iterator Iterator1 = a.iterator();

            while (Iterator1.hasNext()) {
                Activity Activity2 = (Activity) Iterator1.next();

                if (Activity2 == null)
                    continue;
                Activity2.finish();
            }
            a.clear();
        }
    }
}
