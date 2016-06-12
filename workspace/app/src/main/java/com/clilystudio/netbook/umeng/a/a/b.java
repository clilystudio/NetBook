package com.clilystudio.netbook.umeng.a.a;

import android.content.Context;
import android.content.SharedPreferences$Editor;

import org.json.JSONObject;

import java.util.Iterator;

import u.aly.bs;
import u.aly.bt;
import u.aly.bx;

public final class b {

    private a a = null;
    private f b = null;
    private long c = 0L;

    static f a(b b1) {
        return b1.b;
    }

    static JSONObject a(b b1, Context Context2) {
        return b1.b(Context2);
    }

    static void a(b b1, Context Context2, e e3) {
        SharedPreferences$Editor Editor5;

        com.clilystudio.netbook.umeng.a.o.a(Context2);
        Editor5 = com.clilystudio.netbook.umeng.a.o.g().edit();
        if (!android.text.TextUtils.isEmpty((CharSequence) e3.e)) {
            Editor5.putString("umeng_last_config_time", e3.e);
            Editor5.commit();
        }
        if (e3.c != -1) {
            com.clilystudio.netbook.umeng.a.o.a(Context2);
            com.clilystudio.netbook.umeng.a.o.a(e3.c, e3.d);
        }
    }

    static void a(b b1, JSONObject JSONObject2) {
        if (b1.a != null)
            b1.a.a();
    }

    static void b(b b1, Context Context2, e e3) {
        if (e3.a != null && e3.a.length() != 0) {
            SharedPreferences$Editor Editor5;

            com.clilystudio.netbook.umeng.a.o.a(Context2);
            Editor5 = com.clilystudio.netbook.umeng.a.o.g().edit();
            try {
                Object Object7 = e3.a;
                Iterator Iterator8 = ((JSONObject) Object7).keys();

                while (Iterator8.hasNext())
                    ;
                Editor5.commit();
                bt.a("MobclickAgent", new StringBuilder("get online setting params: ").append(Object7).toString());
            } catch (Exception Exception6) {
                bt.c("MobclickAgent", "save online config params", Exception6);
                return;
            }
        }
    }

    private JSONObject b(Context Context1) {
        JSONObject JSONObject2 = new JSONObject();

        try {
            JSONObject2.put("type", "online_config");
            JSONObject2.put("appkey", a(Context1));
            JSONObject2.put("version_code", bs.a(Context1));
            JSONObject2.put("package", bs.o(Context1));
            JSONObject2.put("sdk_version", "5.2.4");
            JSONObject2.put("idmd5", bx.b(bs.c(Context1)));
            JSONObject2.put("channel", b(Context1));
            JSONObject2.put("report_policy", com.clilystudio.netbook.umeng.a.o.a(Context1).a()[0]);
            com.clilystudio.netbook.umeng.a.o.a(Context1);
            JSONObject2.put("last_config_time", com.clilystudio.netbook.umeng.a.o.g().getString("umeng_last_config_time", ""));
        } catch (Exception Exception3) {
            bt.b("MobclickAgent", "exception in onlineConfigInternal");
            return null;
        }
        return JSONObject2;
    }

    public final void a(Context Context1) {
        if (Context1 == null) {
            try {
                bt.b("MobclickAgent", "unexpected null context in updateOnlineConfig");
            } catch (Exception Exception2) {
                bt.b("MobclickAgent", "exception in updateOnlineConfig");
            }
        } else {
            try {
                long long3 = System.currentTimeMillis();

                if (long3 - c <= 3600000L)
                    return;
                c = long3;
                new Thread((Runnable) new d(this, Context1.getApplicationContext())).start();
            } catch (Exception Exception5) {
                bt.b("MobclickAgent", "exception in updateOnlineConfig");
            }
        }
    }

    public final void a(a a1) {
        a = a1;
    }

    public final void a(f f1) {
        b = f1;
    }
}
