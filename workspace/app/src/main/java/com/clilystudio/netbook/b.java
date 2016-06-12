package com.clilystudio.netbook;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Map;
import java.util.Properties;

public final class b {

    private static b b;
    private Context a;

    public static b a(Context Context1) {
        if (b == null) {
            b b2 = new b();

            b = b2;
            b2.a = Context1;
        }
        return b;
    }

    private void b(Properties Properties1) {
        Object Object2 = null;
        Object Object3;

        try {
            Object3 = new FileOutputStream(new File(a.getDir("config", 0), "config"));
        } catch (Exception Exception4) {
            Object3 = null;
            try {
                Exception4.printStackTrace();
            } finally {
                Object2 = Object3;
                if (Object2 != null) {
                    try {
                        ((FileOutputStream) Object2).close();
                    } catch (Exception Exception6) {
                    }
                }
                throw Object5;
            }
            if (Object3 != null) {
                try {
                    ((FileOutputStream) Object3).close();
                } catch (Exception Exception7) {
                    return;
                }
                return;
            }
        } finally {
            if (Object2 != null)
                ((FileOutputStream) Object2).close();
            throw Object5;
        }
    }

    public final Properties a() {
        Object Object1 = null;
        Properties Properties2 = new Properties();
        Object Object6;

        try {
            File File8 = a.getDir("config", 0);

            Object6 = new FileInputStream(new StringBuilder().append(File8.getPath()).append(File.separator).append("config").toString());
        } catch (Exception Exception5) {
            Object6 = null;
            if (Object6 != null) {
                try {
                    ((FileInputStream) Object6).close();
                } catch (Exception Exception7) {
                    return Properties2;
                }
                return Properties2;
            }
        } finally {
            if (Object1 != null) {
                try {
                    ((FileInputStream) Object1).close();
                } catch (Exception Exception4) {
                }
            }
            throw Object3;
        }
        return Properties2;
    }

    public final void a(String String1, String String2) {
        Properties Properties3 = a();

        Properties3.setProperty(String1, String2);
        b(Properties3);
    }

    public final void a(Properties Properties1) {
        Properties Properties2 = a();

        Properties2.putAll((Map) Properties1);
        b(Properties2);
    }

    public final transient void a(String[] String_1darray1) {
        Properties Properties2 = a();
        int int3 = String_1darray1.length;
        int int4;

        for (int4 = 0; int4 < int3; ++int4)
            Properties2.remove(String_1darray1[int4]);
        b(Properties2);
    }
}
