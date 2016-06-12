package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;
import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.UUID;

public final class l {

    public static String a = "";
    public static String b = "";
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static int g = 0;
    public static int h = 0;
    public static long i = 86400L;
    public static String j = "";
    public static String k = "";
    public static String l = "";
    public static String m = "";
    public static String n = "";
    public static String o = "";
    public static String p = "";
    public static String q = "";
    public static String r = "";
    public static String s = "";

    static String a(String String1, int int2, String String3, int int4, String String5, String String6, int int7) {
        StringBuilder StringBuilder8 = new StringBuilder();

        StringBuilder8.append(new StringBuilder("&codeType=").append(int7).toString());
        StringBuilder8.append(new StringBuilder("&payCode=").append(String3).toString());
        StringBuilder8.append(new StringBuilder("&payname=").append(URLEncoder.encode(String5)).toString());
        StringBuilder8.append(new StringBuilder("&payprice=").append(int4).toString());
        StringBuilder8.append(new StringBuilder("&orderid=").append(String1).toString());
        StringBuilder8.append(new StringBuilder("&scheme=").append(int2).toString());
        StringBuilder8.append(new StringBuilder("&phone=").append(String6).toString());
        return StringBuilder8.toString();
    }

    public static String a(String String1, String String2) {
        StringBuilder StringBuilder3 = new StringBuilder();

        StringBuilder3.append(new StringBuilder("&verifycode=").append(String2).toString());
        StringBuilder3.append(new StringBuilder("&orderid=").append(String1).toString());
        return StringBuilder3.toString();
    }

    static String a(String String1, String String2, int int3, String String4, String String5, int int6) {
        StringBuilder StringBuilder7 = new StringBuilder();

        StringBuilder7.append(new StringBuilder("&codeType=").append(int6).toString());
        StringBuilder7.append(new StringBuilder("&payCode=").append(String2).toString());
        StringBuilder7.append(new StringBuilder("&payname=").append(URLEncoder.encode(String4)).toString());
        StringBuilder7.append(new StringBuilder("&payprice=").append(int3).toString());
        StringBuilder7.append(new StringBuilder("&orderid=").append(String1).toString());
        StringBuilder7.append(new StringBuilder("&phone=").append(String5).toString());
        return StringBuilder7.toString();
    }

    public static void a() {
        String String2;
        File File5;

        try {
            File File3;
            Object Object4;

            if (!android.text.TextUtils.isEmpty((CharSequence) k))
                return;
            k = d();
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sdcard uuid:").append(k).toString());
            if (!android.text.TextUtils.isEmpty((CharSequence) k))
                return;
            k = UUID.randomUUID().toString().replaceAll("-", "");
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("random uuid:").append(k).toString());
            if (TextUtils.isEmpty((CharSequence) k))
                return;
            String2 = k;
            File3 = new File(android.support.v7.app.k.e());
            if (!File3.exists())
                File3.mkdirs();
            Object4 = new StringBuilder(String.valueOf(android.support.v7.app.k.e())).append(".hpay_device_id").toString();
            File5 = new File((String) Object4);
            if (File5.exists() && !android.text.TextUtils.isEmpty((CharSequence) Object4)) {
                File File9 = new File((String) Object4);

                if (File9.isFile() && File9.exists())
                    File9.delete();
            }
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
        try {
            BufferedWriter BufferedWriter6 = new BufferedWriter((Writer) new FileWriter(File5));

            BufferedWriter6.write(String2);
            BufferedWriter6.flush();
            BufferedWriter6.close();
        } catch (Exception Exception7) {
            try {
                Exception7.printStackTrace();
            } catch (Exception Exception10) {
                Exception10.printStackTrace();
                return;
            }
            return;
        } catch (IOException IOException8) {
            try {
                IOException8.printStackTrace();
            } catch (Exception Exception11) {
                Exception11.printStackTrace();
                return;
            }
            return;
        }
    }

    public static void a(Activity Activity1, String String2, int int3, String String4, int int5, String String6, String String7, int int8, k k9) {
        Thread Thread10 = new Thread((Runnable) new p(Activity1, String2, int3, String4, int5, String6, String7, int8, k9));

        Thread10.setName("thread_paycode");
        Thread10.start();
    }

    public static void a(Activity Activity1, String String2, String String3, int int4, String String5, String String6, int int7, k k8) {
        Thread Thread9 = new Thread((Runnable) new n(Activity1, String2, String3, int4, String5, String6, int7, k8));

        Thread9.setName("thread_scheme_type");
        Thread9.start();
    }

    public static void a(Activity Activity1, String String2, String String3, k k4) {
        Thread Thread5 = new Thread((Runnable) new r(Activity1, String2, String3, k4));

        Thread5.setName("thread_submityzm");
        Thread5.start();
    }

    public static void a(Context Context1) {
        long long2 = 0L;
        Context Context4 = Context1.getApplicationContext();

        try {
            String String15;

            if (a.b == null)
                a.b = Context4.getSharedPreferences("hpay_game_config", 0);
            g = a.b.getInt("hpay_game_filter", 0);
            f = a.b.getString("hpay_game_filter_content", "");
            h = a.b.getInt("hpay_game_confirm", 0);
            p = a.b.getString("hpay_game_scheme_content", "");
            i = a.b.getLong("hpay_game_next_inittime", 86400L);
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("HPAY_NEXT_INITTIME 1:").append(i).toString());
            String15 = f(Context4.getApplicationContext());
            j = a.b.getString(String15, "");
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("hpay_game_init_phone:").append(j).toString());
        } catch (Exception Exception5) {
            Exception5.printStackTrace();
        }
        if (com.clilystudio.netbook.hpay100.a.a.j(Context1.getApplicationContext())) {
            long long6 = 1000L * i;
            long long8;
            long long10;
            long long12;

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("nextinitTime:").append(long6).toString());
            long8 = System.currentTimeMillis();
            long10 = g(Context1.getApplicationContext());
            if (long10 > long8)
                a(Context1, long2);
            else
                long2 = long10;
            long12 = long8 - long2;
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("intervalTime:").append(long12).toString());
            if (long12 < long6)
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "\u521D\u59CB\u5316\u8BF7\u6C42\u95F4\u9694\u65F6\u95F4\u592A\u77ED");
            else {
                Thread Thread14 = new Thread((Runnable) new m(Context1));

                Thread14.setName("thread_init");
                Thread14.start();
            }
        }
    }

    public static void a(Context Context1, int int2) {
        int int3 = 1;

        try {
            int int5 = com.clilystudio.netbook.hpay100.c.j.a();
            String String6 = new StringBuilder(String.valueOf(int5)).append("@@@0").toString();
            String[] String_1darray7 = PreferenceManager.getDefaultSharedPreferences(Context1).getString("hpay_smsfailednum_2", String6).split("@@@");
            String String8;

            if (String_1darray7[0].equals(new StringBuilder(String.valueOf(int5)).toString()))
                int3 = 1 + Integer.valueOf(String_1darray7[1]).intValue();
            String8 = new StringBuilder(String.valueOf(int5)).append("@@@").append(int3).toString();
            PreferenceManager.getDefaultSharedPreferences(Context1).edit().putString("hpay_smsfailednum_2", String8).commit();
        } catch (Exception Exception4) {
            Exception4.printStackTrace();
            return;
        }
    }

    public static void a(Context Context1, long long2) {
        try {
            PreferenceManager.getDefaultSharedPreferences(Context1).edit().putLong("hpay_init_request_time", long2).commit();
        } catch (Exception Exception4) {
            Exception4.printStackTrace();
            return;
        }
    }

    public static void a(Context Context1, k k2) {
        if (!com.clilystudio.netbook.hpay100.c.b.b(Context1) || !com.clilystudio.netbook.hpay100.a.a.k(Context1))
            k2.a("");
        else {
            Thread Thread3;

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "getCMWhite01");
            Thread3 = new Thread((Runnable) new v(Context1, k2));
            Thread3.setName("thread_getcmwhite01");
            Thread3.start();
        }
    }

    public static void a(Context Context1, String String2) {
        if (!android.text.TextUtils.isEmpty((CharSequence) String2) && com.clilystudio.netbook.hpay100.a.a.i(Context1.getApplicationContext()) != -1) {
            Thread Thread3 = new Thread((Runnable) new t(Context1, String2));

            Thread3.setName("thread_reserve_url");
            Thread3.start();
        }
    }

    public static String b(Context Context1) {
        try {
            int int3 = com.clilystudio.netbook.hpay100.c.j.a();
            String String4 = new StringBuilder(String.valueOf(int3)).append("@@@0").toString();
            String[] String_1darray5 = PreferenceManager.getDefaultSharedPreferences(Context1).getString("hpay_smsfailednum_2", String4).split("@@@");

            if (String_1darray5[0].equals(new StringBuilder(String.valueOf(int3)).toString()))
                return String_1darray5[1];
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return "0";
        }
        return "0";
    }

    public static void b() {
        if (TextUtils.isEmpty((CharSequence) l))
            l = a.b();
    }

    public static void b(Context Context1, int int2) {
        try {
            PreferenceManager.getDefaultSharedPreferences(Context1).edit().putInt("hpay_init_sdk_date", int2).commit();
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return;
        }
    }

    public static void b(Context Context1, String String2) {
        if (!android.text.TextUtils.isEmpty((CharSequence) String2)) {
            int int3 = com.clilystudio.netbook.hpay100.a.a.i(Context1.getApplicationContext());

            if (int3 != -1 && int3 != 6) {
                Thread Thread4 = new Thread((Runnable) new u(Context1, String2));

                Thread4.setName("thread_whitelist");
                Thread4.start();
                return;
            }
        }
    }

    public static void c() {
        label_5:
        {
            try {
                if (android.support.v7.app.k.d())
                    break label_5;
                w.b = false;
            } catch (Exception Exception1) {
                Exception1.printStackTrace();
                w.b = false;
            }
            return;
        }
        try {
            if (!(new File(new StringBuilder(String.valueOf(android.support.v7.app.k.e())).append(".hpaylogtest.debug").toString()).exists()))
                return;
            w.b = true;
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            w.b = false;
        }
    }

    public static void c(Context Context1) {
        try {
            String String3 = new StringBuilder(String.valueOf(com.clilystudio.netbook.hpay100.c.j.a())).append("@@@0").toString();

            PreferenceManager.getDefaultSharedPreferences(Context1).edit().putString("hpay_smsfailednum_2", String3).commit();
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return;
        }
    }

    public static int d(Context Context1) {
        int int3;

        try {
            int3 = PreferenceManager.getDefaultSharedPreferences(Context1).getInt("hpay_init_sdk_date", 0);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return 0;
        }
        return int3;
    }

    private static String d() {
        Object Object1 = null;
        String String2 = "";
        File File3 = new File(new StringBuilder(String.valueOf(android.support.v7.app.k.e())).append(".hpay_device_id").toString());

        if (File3.exists()) {
            Object Object4;
            BufferedReader BufferedReader5;

            try {
                Object4 = new FileReader(File3);
            } catch (Exception Exception10) {
                BufferedReader5 = null;
                Object4 = null;
                try {
                    Exception10.printStackTrace();
                } finally {
                    if (Object4 != null) {
                        try {
                            ((FileReader) Object4).close();
                        } catch (Exception Exception8) {
                            Exception8.printStackTrace();
                            throw Object7;
                        }
                    }
                    if (BufferedReader5 != null) {
                        try {
                            BufferedReader5.close();
                        } catch (Exception Exception15) {
                            Exception15.printStackTrace();
                        }
                    }
                    throw Object7;
                }
                if (Object4 != null) {
                    try {
                        ((FileReader) Object4).close();
                    } catch (Exception Exception11) {
                        Exception11.printStackTrace();
                        return String2;
                    }
                }
                if (BufferedReader5 != null) {
                    try {
                        BufferedReader5.close();
                    } catch (Exception Exception16) {
                        Exception16.printStackTrace();
                        return String2;
                    }
                    return String2;
                }
            } catch (FileNotFoundException FileNotFoundException6) {
                BufferedReader5 = null;
                try {
                    FileNotFoundException6.printStackTrace();
                } finally {
                    Object4 = Object1;
                    if (Object4 != null)
                        ((FileReader) Object4).close();
                    if (BufferedReader5 != null)
                        BufferedReader5.close();
                    throw Object7;
                }
                if (Object1 != null) {
                    try {
                        ((FileReader) Object1).close();
                    } catch (Exception Exception9) {
                        Exception9.printStackTrace();
                        return String2;
                    }
                }
                if (BufferedReader5 != null) {
                    try {
                        BufferedReader5.close();
                    } catch (Exception Exception17) {
                        Exception17.printStackTrace();
                        return String2;
                    }
                    return String2;
                }
            } finally {
                BufferedReader5 = null;
                Object4 = null;
                if (Object4 != null)
                    ((FileReader) Object4).close();
                if (BufferedReader5 != null)
                    BufferedReader5.close();
                throw Object7;
            }
        }
        return String2;
    }

    public static String e(Context Context1) {
        Object Object3;

        try {
            Object Object4 = android.support.v7.app.k.h(Context1);

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sdk phone--0:").append((String) Object4).toString());
            if (TextUtils.isEmpty((CharSequence) Object4) || ((String) Object4).length() < 11) {
                Object3 = j;
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sdk phone--1:").append((String) Object3).toString());
            }
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            Object3 = "";
        }
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sdk phone--2:").append((String) Object3).toString());
        if (!com.clilystudio.netbook.hpay100.c.b.a((String) Object3))
            Object3 = "";
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sdk phone--3:").append((String) Object3).toString());
        return (String) Object3;
    }

    public static String f(Context Context1) {
        String String2 = "hpay_game_init_phone";
        Object Object3 = android.support.v7.app.k.e(Context1);

        if (!android.text.TextUtils.isEmpty((CharSequence) Object3))
            String2 = new StringBuilder(String.valueOf(String2)).append((String) Object3).toString();
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("initphonekey:").append(String2).toString());
        return String2;
    }

    private static long g(Context Context1) {
        long long2 = 0L;

        try {
            long long5 = PreferenceManager.getDefaultSharedPreferences(Context1).getLong("hpay_init_request_time", 0L);
        } catch (Exception Exception4) {
            Exception4.printStackTrace();
        }
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("initRequestTime:").append(long2).toString());
        return long2;
    }
}
