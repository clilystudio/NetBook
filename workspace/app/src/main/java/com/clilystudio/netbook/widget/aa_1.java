package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;

import com.a.a.c;
import com.clilystudio.netbook.util.e;

import org.json.JSONArray;
import org.json.JSONException;

final class aa extends c {
    private /* synthetic */ Context a;
    private /* synthetic */ HomeFindSecretItem b;

    aa(HomeFindSecretItem homeFindSecretItem, Context context) {
        this.b = homeFindSecretItem;
        this.a = context;
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
                    if (HomeFindSecretItem.a(this.b).isShowing()) {
                        new com.clilystudio.netbook.reader.random.a(HomeFindSecretItem.a(this.b), (Activity) this.a, false).b(string);
                    }
                    a.c(this.b.getContext(), string, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B");
                    a.i(this.b.getContext(), string);
                    return;
                }
                e.a((Activity) this.a, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e");
                HomeFindSecretItem.a(this.b).dismiss();
                return;
            } catch (JSONException var2_3) {
                var2_3.printStackTrace();
                e.a((Activity) this.a, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e");
                HomeFindSecretItem.a(this.b).dismiss();
            }
        }
    }
}
