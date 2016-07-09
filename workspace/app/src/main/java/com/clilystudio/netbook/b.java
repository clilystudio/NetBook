package com.clilystudio.netbook;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public final class b {
    private static b b;
    private Context a;

    public static b a(Context context) {
        if (b == null) {
            b b2;
            b = b2 = new b();
            b2.a = context;
        }
        return b;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    private void b(Properties properties) {
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(new File(this.a.getDir("config", 0), "config"));
            properties.store(fos, null);
            fos.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public final Properties a() {
        Properties properties = new Properties();
        File dir = this.a.getDir("config", 0);
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(dir.getPath() + File.separator + "config");
            properties.load(fis);
            return properties;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public final void a(String string, String string2) {
        Properties properties = this.a();
        properties.setProperty(string, string2);
        this.b(properties);
    }

    public final void a(Properties properties) {
        Properties properties2 = this.a();
        properties2.putAll(properties);
        this.b(properties2);
    }

    public final /* varargs */ void a(String... arrstring) {
        Properties properties = this.a();
        int n = arrstring.length;
        for (String anArrstring : arrstring) {
            properties.remove(anArrstring);
        }
        this.b(properties);
    }
}
