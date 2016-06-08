package com.clilystudio.netbook;

import android.os.Environment;

public final class c {
    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String b = a + "/ZhuiShuShenQi/Chapter";
    public static final String c = a + "/ZhuiShuShenQi/Chapteys";
    public static final String d = a + "/ZhuiShuShenQi/TxtToc/";
    public static final String e = a + "/ZhuiShuShenQi/SearchHistory/";
    public static final String f = a + "/ZhuiShuShenQi/CategoryLevel/";
    public static final String g = a + "/ZhuiShuShenQi/Wifi/";
    public static final String h;

    static {
        new StringBuilder().append(a).append("/ZhuiShuShenQi/Chapter/keys");
        h = a + "/ZhuiShuShenQi/MicroGame/";
    }
}

