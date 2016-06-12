package com.clilystudio.netbook.reader.random;

import android.app.Activity;

import com.clilystudio.netbook.util.e;

import org.json.JSONArray;
import org.json.JSONException;

final class C extends com.a.a.c {

    private ReaderRandomActivity a;

    C(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void a(JSONArray JSONArray1) {
        if (JSONArray1.length() > 0) {
            try {
                String String3 = JSONArray1.getJSONObject(0).getString("iid");
            } catch (JSONException JSONException2) {
                JSONException2.printStackTrace();
                e.a((Activity) a, "\u6253\u5F00\u5931\u8D25\u6216\u6682\u65F6\u672A\u5F00\u653E");
                ReaderRandomActivity.h(a).dismiss();
            }
        }
    }
}
