package com.clilystudio.app.netbook;

import android.os.Environment;

import java.io.File;

public final class c_StoragePathConst {
    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String b = a + "/ZhuiShuShenQi/Chapter";
    public static final String c = a + "/ZhuiShuShenQi/Chapteys";
    public static final String d = a + "/ZhuiShuShenQi/TxtToc/";
    public static final String e = a + "/ZhuiShuShenQi/SearchHistory/";
    public static final String f = a + "/ZhuiShuShenQi/CategoryLevel/";
    public static final String g = a + "/ZhuiShuShenQi/Wifi/";
    public static final String h = a + "/ZhuiShuShenQi/MicroGame/";

    static {
        new StringBuilder().append(a).append("/ZhuiShuShenQi/Chapter/keys");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.c
 * JD-Core Version:    0.6.2
 */