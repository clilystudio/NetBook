package com.clilystudio.netbook.umeng.a.a;

import org.json.JSONObject;

import java.util.Locale;

import u.aly.bt;
import u.aly.bw;

public class e extends bw {

    public JSONObject a = null;
    String e;
    boolean b = false;
    int c = -1;
    int d = -1;
    public e(JSONObject JSONObject1) {
        super(JSONObject1);
        if (JSONObject1 != null) {
            label_32:
            {
                try {
                    boolean boolean3;

                    if (!JSONObject1.has("config_update"))
                        break label_32;
                    boolean3 = JSONObject1.getString("config_update").toLowerCase(Locale.US).equals("no");
                } catch (Exception Exception2) {
                    bt.d("MobclickAgent", "fail to parce online config response", Exception2);
                }
            }
            if (c < 0 || c > 6) {
                c = 1;
                return;
            }
        }
    }
}
