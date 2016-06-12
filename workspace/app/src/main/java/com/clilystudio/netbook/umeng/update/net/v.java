package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class v {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String a = null;

    static {
    }

    private Context b;     // final access specifier removed
    public v(Context Context1) {
        b = Context1;
    }

    public final List a() {
        Object Object1 = new ArrayList();

        try {
            SharedPreferences SharedPreferences3 = b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0);
            Iterator Iterator4 = SharedPreferences3.getAll().keySet().iterator();

            while (Iterator4.hasNext())
                ;
            SharedPreferences3.edit().clear().commit();
        } catch (Exception Exception2) {
            return (List) Object1;
        }
        return (List) Object1;
    }

    public final void a(int int1) {
        SharedPreferences SharedPreferences3;
        SharedPreferences$Editor Editor4;

        try {
            SharedPreferences3 = b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0);
            Editor4 = SharedPreferences3.edit();
        } catch (Exception Exception2) {
            return;
        }
        synchronized (SharedPreferences3) {
            Editor4.putString(String.valueOf(int1), "");
            Editor4.commit();
        }
        try {
            u.a.b.a(a, new StringBuilder("add nid [").append(int1).append("] to runtime cache.").toString());
        } catch (Exception Exception6) {
            return;
        }
    }

    public final void b(int int1) {
        try {
            SharedPreferences SharedPreferences3 = b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0);

            if (SharedPreferences3.contains(String.valueOf(int1))) {
                SharedPreferences$Editor Editor4 = SharedPreferences3.edit();

                Editor4.remove(String.valueOf(int1));
                Editor4.commit();
            }
            u.a.b.a(a, new StringBuilder("remove nid [").append(int1).append("] to runtime cache.").toString());
        } catch (Exception Exception2) {
            return;
        }
    }

    public final boolean b() {
        int int1 = b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0).getAll().size();
        boolean boolean2 = false;

        if (int1 > 0)
            boolean2 = true;
        return boolean2;
    }
}
