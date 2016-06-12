package com.clilystudio.netbook.umeng.update.net;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;

import java.text.SimpleDateFormat;
import java.util.Date;

public class m {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String a = null;
    private static Context b;

    static {
    }

    private n c;
    m(byte byte1) {
        this();
    }

    private m() {
        c = new n(this, b);
    }

    public static m a(Context Context1) {
        if (b == null && Context1 == null)
            throw new NullPointerException();
        else {
            if (b == null)
                b = Context1;
            return o.a;
        }
    }

    static String a() {
        return a;
    }

    public final void a(int int1) {
        try {
            Date Date2 = new Date(new Date().getTime() - 259200000L);
            String String4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Date2);
            String String5 = new StringBuilder(" DELETE FROM umeng_download_task_list WHERE strftime('yyyy-MM-dd HH:mm:ss', last_modified)<=strftime('yyyy-MM-dd HH:mm:ss', '").append(String4).append("')").toString();

            c.getWritableDatabase().execSQL(String5);
            u.a.b.c(a, new StringBuilder("clearOverdueTasks(259200").append(") remove all tasks before ").append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Date2)).toString());
        } catch (Exception Exception3) {
            u.a.b.b(a, Exception3.getMessage());
            return;
        }
    }

    public final void a(String String1, String String2, int int3) {
        ContentValues ContentValues4 = new ContentValues();
        String[] String_1darray5;

        ContentValues4.put("progress", Integer.valueOf(int3));
        ContentValues4.put("last_modified", g.a());
        String_1darray5 = new String[]{String1, String2};
        c.getWritableDatabase().update("umeng_download_task_list", ContentValues4, "cp=? and url=?", String_1darray5);
        u.a.b.c(a, new StringBuilder("updateProgress(").append(String1).append(", ").append(String2).append(", ").append(int3).append(")").toString());
    }

    public final boolean a(String String1, String String2) {
        ContentValues ContentValues3 = new ContentValues();
        boolean boolean7;
        long long9;
        int int11;

        ContentValues3.put("cp", String1);
        ContentValues3.put("url", String2);
        ContentValues3.put("progress", Integer.valueOf(0));
        ContentValues3.put("last_modified", g.a());
        label_74:
        {
            Cursor Cursor8;

            try {
                String[] String_1darray4 = {String1, String2};

                Cursor8 = c.getReadableDatabase().query("umeng_download_task_list", new String[]{"progress"}, "cp=? and url=?", String_1darray4, null, null, null, "1");
                if (Cursor8.getCount() <= 0)
                    break label_74;
                u.a.b.c(a, new StringBuilder("insert(").append(String1).append(", ").append(String2).append("):  already exists in the db. Insert is cancelled.").toString());
            } catch (Exception Exception5) {
                Exception Exception6 = Exception5;

                boolean7 = false;
                u.a.b.c(a, new StringBuilder("insert(").append(String1).append(", ").append(String2).append("): ").append(Exception6.getMessage()).toString(), Exception6);
                return boolean7;
            }
            boolean7 = false;
            try {
                Cursor8.close();
            } catch (Exception Exception13) {
                u.a.b.c(a, new StringBuilder("insert(").append(String1).append(", ").append(String2).append("): ").append(Exception13.getMessage()).toString(), Exception13);
                return boolean7;
            }
            return boolean7;
        }
        try {
            long9 = c.getWritableDatabase().insert("umeng_download_task_list", null, ContentValues3);
        } catch (Exception Exception14) {
            Exception13 = Exception14;
            boolean7 = false;
            u.a.b.c(a, new StringBuilder("insert(").append(String1).append(", ").append(String2).append("): ").append(Exception13.getMessage()).toString(), Exception13);
            return boolean7;
        }
        if (long9 == -1L)
            int11 = 0;
        else
            int11 = 1;
        try {
            u.a.b.c(a, new StringBuilder("insert(").append(String1).append(", ").append(String2).append("): rowid=").append(long9).toString());
        } catch (Exception Exception12) {
            boolean7 = int11;
            Exception13 = Exception12;
            u.a.b.c(a, new StringBuilder("insert(").append(String1).append(", ").append(String2).append("): ").append(Exception13.getMessage()).toString(), Exception13);
            return boolean7;
        }
        boolean7 = int11;
    }

    public void finalize() {
        c.close();
    }
}
