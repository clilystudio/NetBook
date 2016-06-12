package com.clilystudio.netbook;

import android.os.Environment;

public final class c {

    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String b = new StringBuilder().append(a).append("/ZhuiShuShenQi/Chapter").toString();
    public static final String c = new StringBuilder().append(a).append("/ZhuiShuShenQi/Chapteys").toString();
    public static final String d = new StringBuilder().append(a).append("/ZhuiShuShenQi/TxtToc/").toString();
    public static final String e = new StringBuilder().append(a).append("/ZhuiShuShenQi/SearchHistory/").toString();
    public static final String f = new StringBuilder().append(a).append("/ZhuiShuShenQi/CategoryLevel/").toString();
    public static final String g = new StringBuilder().append(a).append("/ZhuiShuShenQi/Wifi/").toString();
    public static final String h = new StringBuilder().append(a).append("/ZhuiShuShenQi/MicroGame/").toString();

    static {
        new StringBuilder().append(a).append("/ZhuiShuShenQi/Chapter/keys");
    }
}
