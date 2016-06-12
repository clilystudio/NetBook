package com.clilystudio.netbook.hpay100.config;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;

import java.util.ArrayList;

public final class b extends ContentObserver {

    public static String a = "";
    public static String b = "";
    public static String[] c = null;
    public static int d = 0;
    private static j f;
    private Context e = null;
    public b(Handler Handler1, Context Context2) {
        super(Handler1);
        e = Context2;
    }

    public static void a(j j1) {
        f = j1;
    }

    private void a() {
        if (l.g == 0) {
            Cursor Cursor4;

            try {
                ArrayList ArrayList7 = a.a();
            } catch (Exception Exception1) {
                Cursor Cursor2 = null;

                try {
                    Exception1.printStackTrace();
                } finally {
                    Cursor4 = Cursor2;
                    if (Cursor4 != null) {
                        try {
                            Cursor4.close();
                        } catch (Exception Exception5) {
                            Exception5.printStackTrace();
                        }
                    }
                    throw Object3;
                }
                if (Cursor2 != null) {
                    try {
                        Cursor2.close();
                    } catch (Exception Exception6) {
                        Exception6.printStackTrace();
                        return;
                    }
                    return;
                }
            } finally {
                Cursor4 = null;
                if (Cursor4 != null)
                    Cursor4.close();
                throw Object3;
            }
        }
    }

    public final void onChange(boolean boolean1) {
        super.onChange(boolean1);
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onChange");
        if (f != null)
            f.a();
        if (!android.text.TextUtils.isEmpty((CharSequence) a) && !android.text.TextUtils.isEmpty((CharSequence) b) && c != null && c.length != 0) {
            Cursor Cursor5;

            try {
                Uri Uri8 = Uri.parse("content://sms/inbox");
                String[] String_1darray9 = {"_id", "address", "read", "body"};
                ContentResolver ContentResolver10 = e.getContentResolver();
                String String11 = new StringBuilder(" address Like ?  and read = 0  and date > ").append(System.currentTimeMillis() - 3600000L).toString();
                String[] String_1darray12;
                Cursor Cursor13;

                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("selection").append(String11).toString());
                String_1darray12 = new String[1];
                String_1darray12[0] = new StringBuilder("%").append(a).append("%").toString();
                Cursor13 = ContentResolver10.query(Uri8, String_1darray9, String11, String_1darray12, "_id desc");
            } catch (Exception Exception2) {
                Cursor Cursor3 = null;

                try {
                    Exception2.printStackTrace();
                } finally {
                    Cursor5 = Cursor3;
                    if (Cursor5 != null) {
                        try {
                            Cursor5.close();
                        } catch (Exception Exception6) {
                            Exception6.printStackTrace();
                        }
                    }
                    throw Object4;
                }
                if (Cursor3 != null) {
                    try {
                        Cursor3.close();
                    } catch (Exception Exception7) {
                        Exception7.printStackTrace();
                    }
                }
            } finally {
                Cursor5 = null;
                if (Cursor5 != null)
                    Cursor5.close();
                throw Object4;
            }
        }
        a();
    }
}
