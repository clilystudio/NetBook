package com.clilystudio.app.netbook;

import android.os.Environment;

public final class c_StoragePathConst {
    public static final String a_BasePath = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String b_Chapter = a_BasePath + "/ZhuiShuShenQi/Chapter";
    public static final String c_ChapterKeys = a_BasePath + "/ZhuiShuShenQi/Chapter/keys";
    public static final String d_TxtToc = a_BasePath + "/ZhuiShuShenQi/TxtToc/";
    public static final String e_SearchHistory = a_BasePath + "/ZhuiShuShenQi/SearchHistory/";
    public static final String f_CategoryLevel = a_BasePath + "/ZhuiShuShenQi/CategoryLevel/";
    public static final String g_Wifi = a_BasePath + "/ZhuiShuShenQi/Wifi/";
    public static final String h_MicroGame = a_BasePath + "/ZhuiShuShenQi/MicroGame/";
}
