package com.clilystudio.netbook.reader;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class cN extends c {

    private String a;
    private cM b;
    cN(cM cM1, String String2) {
        b = cM1;
        a = String2;
    }

    public final void a(JSONArray JSONArray1) {
        StringBuilder StringBuilder2;
        int int3;
        cO cO5;
        String[] String_1darray6;

        try {
            StringBuilder2 = new StringBuilder("?");
        } catch (JSONException JSONException4) {
            cO5 = new cO(b);
            String_1darray6 = new String[1];
            String_1darray6[0] = a;
            cO5.b(String_1darray6);
            return;
        }
        int3 = 0;
        label_72:
        {
            label_39:
            for (; ; ) {
                String String8;

                try {
                    if (int3 >= JSONArray1.length() || int3 >= 20)
                        break label_72;
                } catch (JSONException JSONException13) {
                    cO5 = new cO(b);
                    String_1darray6 = new String[1];
                    String_1darray6[0] = a;
                    cO5.b(String_1darray6);
                    return;
                }
                try {
                    String8 = ((JSONObject) JSONArray1.get(int3)).getString("iid");
                } catch (JSONException JSONException14) {
                    cO5 = new cO(b);
                    String_1darray6 = new String[1];
                    String_1darray6[0] = a;
                    cO5.b(String_1darray6);
                    return;
                }
                if (int3 == 0) {
                    try {
                        StringBuilder2.append(new StringBuilder("ids=").append(String8).toString());
                        cM.a(b)[int3] = String8;
                    } catch (JSONException JSONException15) {
                        cO5 = new cO(b);
                        String_1darray6 = new String[1];
                        String_1darray6[0] = a;
                        cO5.b(String_1darray6);
                        return;
                    }
                    break label_39;
                } else {
                    try {
                        StringBuilder2.append(new StringBuilder("&ids=").append(String8).toString());
                    } catch (JSONException JSONException16) {
                        cO5 = new cO(b);
                        String_1darray6 = new String[1];
                        String_1darray6[0] = a;
                        cO5.b(String_1darray6);
                        return;
                    }
                }
            }
            ++int3;
        }
        try {
            cP cP11 = new cP(b);
            String[] String_1darray12 = new String[1];

            String_1darray12[0] = StringBuilder2.toString();
            cP11.b(String_1darray12);
        } catch (JSONException JSONException17) {
            cO5 = new cO(b);
            String_1darray6 = new String[1];
            String_1darray6[0] = a;
            cO5.b(String_1darray6);
            return;
        }
    }
}
