package com.clilystudio.netbook.download;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;

import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashSet;
import java.util.Set;

public final class a {
    private Context a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g = false;
    private int h;
    private Handler i;

    @TargetApi(value = 11)
    public a(Context context, String string, String string2, String string3, String string4) {
        this.i = new Handler() {

            @Override
            public void handleMessage(Message msg) {
                if (msg.what == 1 || msg.what == 2) {
                    h += msg.what;
                    if (h == 3) {
                        com.clilystudio.netbook.download.a.b(a.this);
                    }
                }
            }
        };
        this.a = context;
        this.b = string;
        this.c = string2;
        this.d = string3;
        this.e = com.clilystudio.netbook.download.e.a;
        this.f = string4;
        Set<String> set = context.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", null);
        if (set != null && set.contains(string4)) {
            this.g = true;
            return;
        }
        this.g = false;
    }

    static /* synthetic */ int a(a a2) {
        return a2.h;
    }

    static /* synthetic */ int a(a a2, int n) {
        a2.h = n;
        return n;
    }

    static /* synthetic */ void b(a a2) {
        Set<String> set = a2.a.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", new HashSet<String>());
        SharedPreferences.Editor editor = a2.a.getSharedPreferences("downloadInfo", 0).edit();
        editor.putString("apkName", a2.b);
        editor.putString("apkSavePath", a2.e);
        editor.putString("packageName", a2.f);
        set.add(a2.f);
        editor.putStringSet("downloadedPackage", set);
        editor.apply();
        com.clilystudio.netbook.download.e.a(a2.a, a2.e, a2.b);
    }

    static /* synthetic */ String c(a a2) {
        return a2.e;
    }

    static /* synthetic */ String d(a a2) {
        return a2.b;
    }

    static /* synthetic */ String e(a a2) {
        return a2.c;
    }

    static /* synthetic */ Handler f(a a2) {
        return a2.i;
    }

    static /* synthetic */ String g(a a2) {
        return a2.d;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        double d2;
        float f2 = com.clilystudio.netbook.hpay100.a.a.u(this.a, "rate_test");
        if ((double) f2 <= (d2 = Math.random()) || com.clilystudio.netbook.download.e.a(this.a, this.f) || this.g && (!this.g || com.clilystudio.netbook.download.e.a(this.e, this.b))) {
            return;
        }
        if (com.clilystudio.netbook.download.e.a(this.a)) {
            new Thread() {

                @Override
                public void run() {
                    InputStream var1_1 = null;
                    FileOutputStream var2_2 = null;
                    try {
                        var2_2 = new FileOutputStream(com.clilystudio.netbook.download.e.b);
                        HttpURLConnection var7_3 = (HttpURLConnection) new URL(d).openConnection();
                        var7_3.connect();
                        int var8_4 = var7_3.getContentLength();
                        var1_1 = var7_3.getInputStream();
                        byte[] var9_5 = new byte[1024];
                        int var10_6 = 0;
                        int var11_7 = var1_1.read(var9_5);
                        while (var11_7 != -1) {
                            var10_6 += var11_7;
                            var2_2.write(var9_5, 0, var11_7);
                            if (var10_6 == var8_4) {
                                i.sendEmptyMessage(2);
                                break;
                            }
                            var11_7 = var1_1.read(var9_5);
                        }
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    } finally {
                        if (var2_2 != null) {
                            try {
                                var2_2.close();
                            } catch (IOException e1) {
                                e1.printStackTrace();
                            }
                        }
                        if (var1_1 != null) {
                            try {
                                var1_1.close();
                            } catch (IOException e1) {
                                e1.printStackTrace();
                            }
                        }
                    }
                }
            }.start();
            new Thread() {

                @Override
                public void run() {
                    File var2_2 = new File(e);
                    if (!var2_2.exists()) {
                        var2_2.mkdirs();
                    }
                    FileOutputStream var4_3 = null;
                    InputStream var1_1 = null;
                    try {
                        var4_3 = new FileOutputStream(new File(e, b));
                        HttpURLConnection var8_4 = (HttpURLConnection) new URL(c).openConnection();
                        var8_4.connect();
                        int var9_5 = var8_4.getContentLength();
                        var1_1 = var8_4.getInputStream();
                        byte[] var10_6 = new byte[1024];
                        int var11_7 = 0;
                        int var12_8 = var1_1.read(var10_6);
                        while (var12_8 != -1) {
                            var11_7 += var12_8;
                            var4_3.write(var10_6, 0, var12_8);
                            if (var11_7 == var9_5) {
                                i.sendEmptyMessage(1);
                                break;
                            }
                            var12_8 = var1_1.read(var10_6);
                        }
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    } finally {
                        if (var4_3 != null) {
                            try {
                                var4_3.close();
                            } catch (IOException e1) {
                                e1.printStackTrace();
                            }
                        }
                        if (var1_1 != null) {
                            try {
                                var1_1.close();
                            } catch (IOException e1) {
                                e1.printStackTrace();
                            }
                        }
                    }
                }
            }.start();
            MiStatInterface.recordCountEvent("manhuadao_download_count", this.c);
            return;
        }
        SharedPreferences.Editor editor = this.a.getSharedPreferences("downloadInfo", 0).edit();
        editor.putString("apkName", this.b);
        editor.putString("apkUrl", this.c);
        editor.putString("iconUrl", this.d);
        editor.putString("packageName", this.f);
        editor.apply();
    }

    public final String b() {
        return this.f;
    }
}
