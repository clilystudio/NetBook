package com.clilystudio.netbook.umeng.update;

import android.content.Context;

import com.clilystudio.netbook.umeng.update.util.DeltaUpdate;

import org.json.JSONObject;

public class q extends u.a.e {
// Error: Internal #201: 
// The following method may not be correct.

    private final String d = null;
    private JSONObject e;
    public q(Context Context1) {
    }

    private JSONObject a(Context Context1) {
        JSONObject JSONObject2 = new JSONObject();
        boolean boolean13;

        label_69:
        {
            try {
                JSONObject2.put("type", "update");
                JSONObject2.put("appkey", k.a(Context1));
                JSONObject2.put("version_code", u.a.a.a(Context1));
                JSONObject2.put("package", u.a.a.g(Context1));
                JSONObject2.put("idmd5", u.a.g.b(u.a.a.b(Context1)));
                JSONObject2.put("channel", k.b(Context1));
                JSONObject2.put("proto_ver", "1.4");
                JSONObject2.put("sdk_version", "2.4.2.20140520");
                JSONObject2.put("old_md5", DeltaUpdate.b(Context1));
                if (!com.clilystudio.netbook.umeng.update.util.DeltaUpdate.a() || !com.clilystudio.netbook.umeng.update.k.d())
                    break label_69;
            } catch (Exception Exception3) {
                u.a.b.b(d, "exception in updateInternal", Exception3);
                return null;
            }
            boolean13 = true;
            try {
                JSONObject2.put("delta", boolean13);
            } catch (Exception Exception14) {
                u.a.b.b(d, "exception in updateInternal", Exception14);
                return null;
            }
            return JSONObject2;
        }
        boolean13 = false;
    }

    public final JSONObject a() {
        return e;
    }

    public final String b() {
        return c;
    }
}
