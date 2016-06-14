package com.clilystudio.netbook.reader;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class cN extends c {
    private /* synthetic */ String a;
    private /* synthetic */ cM b;

    cN(cM cM2, String string) {
        this.b = cM2;
        this.a = string;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void a(JSONArray jSONArray) {
        StringBuilder stringBuilder;
        try {
            stringBuilder = new StringBuilder("?");
            for (int i = 0; i < jSONArray.length() && i < 20; ++i) {
                String string = ((JSONObject) jSONArray.get(i)).getString("iid");
                if (i == 0) {
                    stringBuilder.append("ids=" + string);
                } else {
                    stringBuilder.append("&ids=" + string);
                }
                cM.a((cM) this.b)[i] = string;
            }
        } catch (JSONException var4_5) {
            cO cO2 = new cO(this.b);
            String[] arrstring = new String[]{this.a};
            cO2.b(arrstring);
            return;
        }
        cP cP2 = new cP(this.b);
        String[] arrstring = new String[]{stringBuilder.toString()};
        cP2.b(arrstring);
    }
}
