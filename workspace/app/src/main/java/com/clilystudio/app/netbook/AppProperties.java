package com.clilystudio.app.netbook;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

// @RF: b
public final class AppProperties {
    private static AppProperties b;
    private Context a;

    public static AppProperties getInstance(Context paramContext) {
        if (b == null) {
            AppProperties localb = new AppProperties();
            b = localb;
            localb.a = paramContext;
        }
        return b;
    }

    private void saveProperties(Properties properties) {
        try {
            FileOutputStream fos = new FileOutputStream(new File(this.a.getDir("config", 0), "config"));
            properties.store(fos, null);
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final Properties loadProperties() {
        FileInputStream v1 = null;
        Properties p = new Properties();
        try {
            v1 = new FileInputStream(new File(this.a.getDir("config", 0), "config"));
            p.load(v1);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return p;
    }

    public final void setProperties(String paramString1, String paramString2) {
        Properties localProperties = loadProperties();
        localProperties.setProperty(paramString1, paramString2);
        saveProperties(localProperties);
    }

    public final void setProperties(Properties paramProperties) {
        Properties localProperties = loadProperties();
        localProperties.putAll(paramProperties);
        saveProperties(localProperties);
    }

    public final void removeProperties(String[] paramArrayOfString) {
        Properties localProperties = loadProperties();
        int i = paramArrayOfString.length;
        for (int j = 0; j < i; j++)
            localProperties.remove(paramArrayOfString[j]);
        saveProperties(localProperties);
    }
}
