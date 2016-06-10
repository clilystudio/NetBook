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

    public static b a(Context paramContext) {
        if (b == null) {
            b localb = new b();
            b = localb;
            localb.a = paramContext;
        }
        return b;
    }

    private void b(Properties paramProperties) {
        File file = new File(this.a.getDir("config", Context.MODE_PRIVATE), "config");
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            paramProperties.store(fos, null);
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
        File file = this.a.getDir("config", Context.MODE_PRIVATE);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder = stringBuilder.append(file.getPath());
        stringBuilder = stringBuilder.append(File.separator);
        stringBuilder = stringBuilder.append("config");
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(stringBuilder.toString());
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

    public final void a(String paramString1, String paramString2) {
        Properties localProperties = a();
        localProperties.setProperty(paramString1, paramString2);
        b(localProperties);
    }

    public final void a(Properties paramProperties) {
        Properties localProperties = a();
        localProperties.putAll(paramProperties);
        b(localProperties);
    }

    public final void a(String[] paramArrayOfString) {
        Properties localProperties = a();
        int i = paramArrayOfString.length;
        for (int j = 0; j < i; j++)
            localProperties.remove(paramArrayOfString[j]);
        b(localProperties);
    }
}

