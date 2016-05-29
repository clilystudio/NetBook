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
    private static AppProperties mInstance;
    private Context mContext;

    public static AppProperties getInstance(Context paramContext) {
        if (mInstance == null) {
            mInstance = new AppProperties();
            mInstance.mContext = paramContext;
        }
        return mInstance;
    }

    private void saveProperties(Properties properties) {
        try {
            FileOutputStream fos = new FileOutputStream(new File(this.mContext.getDir("config", 0), "config"));
            properties.store(fos, null);
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final Properties loadProperties() {
        FileInputStream fis = null;
        Properties properties = new Properties();
        try {
            fis = new FileInputStream(new File(this.mContext.getDir("config", 0), "config"));
            properties.load(fis);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return properties;
    }

    public final boolean getProperty(String name, boolean defValue) {
        Properties properties = loadProperties();
        String property = properties.getProperty(name);
        if (property == null) {
            return defValue;
        } else {
            return Boolean.valueOf(property);
        }
    }

    public final void setProperties(String name, String value) {
        Properties properties = loadProperties();
        properties.setProperty(name, value);
        saveProperties(properties);
    }

    public final void setProperties(Properties properties) {
        Properties loadProperties = loadProperties();
        loadProperties.putAll(properties);
        saveProperties(loadProperties);
    }

    public final void removeProperties(String[] keys) {
        Properties properties = loadProperties();
        for (int i = 0; i < keys.length; i++) {
            properties.remove(keys[i]);
        }
        saveProperties(properties);
    }
}
