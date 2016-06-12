package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class n extends SQLiteOpenHelper {

    n(m m1, Context Context2) {
        super(Context2, "UMENG_DATA", null, 2);
    }

    public final void onCreate(SQLiteDatabase SQLiteDatabase1) {
        b.c(m.a(), "CREATE TABLE umeng_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);");
        SQLiteDatabase1.execSQL("CREATE TABLE umeng_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);");
    }

    public final void onUpgrade(SQLiteDatabase SQLiteDatabase1, int int2, int int3) {
    }
}
