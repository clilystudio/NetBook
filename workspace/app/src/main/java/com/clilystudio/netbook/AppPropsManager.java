package com.clilystudio.netbook;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public final class AppPropsManager {
    private static AppPropsManager mInstance;
    private Context mContext;

    public static AppPropsManager getInstance(Context context) {
        if (mInstance == null) {
            mInstance = new AppPropsManager();
            mInstance.mContext = context;
        }
        return mInstance;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    private void save(Properties properties) {
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(new File(this.mContext.getDir("config", 0), "config"));
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

    public final Properties load() {
        Properties properties = new Properties();
        File dir = this.mContext.getDir("config", 0);
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

    public final void put(Properties properties) {
        Properties properties2 = this.load();
        if (properties2 != null) {
            properties2.putAll(properties);
        }
        this.save(properties2);
    }

    public final /* varargs */ void remove(String... keys) {
        Properties properties = this.load();
        if (properties != null) {
            for (String key : keys) {
                properties.remove(key);
            }
            this.save(properties);
        }
    }
}
