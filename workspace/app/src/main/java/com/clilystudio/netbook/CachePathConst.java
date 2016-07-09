package com.clilystudio.netbook;

import android.os.Environment;

public final class CachePathConst {
    public static final String RootPath = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String Chapter = RootPath + "/ZhuiShuShenQi/Chapter";
    public static final String ChapterKey = RootPath + "/ZhuiShuShenQi/ChapterKey";
    public static final String TextToc = RootPath + "/ZhuiShuShenQi/TextToc/";
    public static final String SearchHistory = RootPath + "/ZhuiShuShenQi/SearchHistory/";
    public static final String CategoryLevel = RootPath + "/ZhuiShuShenQi/CategoryLevel/";
}
