package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.util.e;

import org.json.JSONArray;
import org.json.JSONException;

final class C extends c {
    private /* synthetic */ ReaderRandomActivity a;

    C(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void a(JSONArray jSONArray) {
        if (jSONArray.length() > 0) {
            try {
                String string = jSONArray.getJSONObject(0).getString("iid");
                if (string != null && string.length() > 0) {
                    if (ReaderRandomActivity.h(this.a).isShowing()) {
                        new a(ReaderRandomActivity.h(this.a), (Activity) this.a, true).b((Object[]) new String[]{string});
                    }
                    com.clilystudio.netbook.hpay100.a.a.c((Context) this.a, string, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B");
                    com.clilystudio.netbook.hpay100.a.a.i(this.a, string);
                    return;
                }
                e.a((Activity) this.a, (String) "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e");
                ReaderRandomActivity.h(this.a).dismiss();
                return;
            } catch (JSONException var2_3) {
                var2_3.printStackTrace();
                e.a((Activity) this.a, (String) "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e");
                ReaderRandomActivity.h(this.a).dismiss();
            }
        }
    }
}
