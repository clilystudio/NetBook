package com.clilystudio.netbook.model.mixtoc;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SsChapterJson {
    // ERROR //
    public static com.clilystudio.netbook.model.ChapterRoot getChapterRoot(String paramString) {
        v1 = 0x0;
        :try_start_0
                v0 = new JSONObject();
        v0.<init> (p0);
        v2 = new JSONArray();
        v3 = "rows";
        v0 = v0.getString(v3);
        v2.<init> (v0);
        v0 = v2.length();
        if (v2.length() <= 0) {
            return null;
        }
        v0 = 0x0;
        v0 = v2.getJSONArray(0);
        if (v0 == 0) {
            return null;
        }
        v2 = v0.length();
        if (v2 <= 0) {
            return null;
        }
        v2 = 0x0;
        v2 = v0.getJSONObject(v2);
        v3 = new Chapter();
        v3.<init> ();
        v0 = "serialcontent";
        v0 = v2.getString(v0);
        v4 = "<br>";
        if (v0 == 0) {
            v0 = v1;
        } else {
            v5 = "\n";
            v0 = v0.replaceAll(v4, v5);
        }
        v0 = Lcom / arcsoft / hpay100 / a / a.z(v0);
        v3.setBody(v0);
        v0 = "serialid";
        v0 = v2.getString(v0);
        v4 = "serialurl";
        v2 = v2.getString(v4);
        v4 = new StringBuilder();
        v4.<init> ();
        v0 = v4.append(v0);
        v4 = "_";
        v0 = v0.append(v4);
        v0 = v0.append(v2);
        v0 = v0.toString();
        v3.setLink(v0);
        v0 = new ChapterRoot();
        v0.<init> ();
        :try_end_0
                .catch Lorg / json / JSONException;
        {:try_start_0..:try_end_0
        }:catch_0
        :
        try_start_1
        v0.setChapter(v3);
        :try_end_1
                .catch Lorg / json / JSONException;
        {:try_start_1..:try_end_1
        }:catch_1
        :
        goto_1
        return v0;
        :catch_0
        move - exception v0
                v6 = v0;
        v0 = v1;
        v1 = v6;
        :goto_2
        v1.printStackTrace();
        goto:goto_1
        :
        catch_1
        move - exception v1
        goto:goto_2
        :
        cond_1
                v0 = v1;
        goto:goto_1
    }

    public static String getChapterUrl(String paramString) {
        try {
            JSONArray localJSONArray1 = new JSONArray(new JSONObject(paramString).getString("rows"));
            int i = localJSONArray1.length();
            Object localObject = null;
            if (i > 0) {
                JSONArray localJSONArray2 = localJSONArray1.getJSONArray(0);
                localObject = null;
                if (localJSONArray2 != null) {
                    int j = localJSONArray2.length();
                    localObject = null;
                    if (j > 0) {
                        String str = localJSONArray2.getJSONObject(0).getString("serialurl");
                        localObject = str;
                    }
                }
            }
            return localObject;
        } catch (JSONException localJSONException) {
            localJSONException.printStackTrace();
        }
        return null;
    }

    public static int getTocCount(String paramString) {
        try {
            JSONArray localJSONArray1 = new JSONArray(new JSONObject(paramString).getString("rows"));
            int i = localJSONArray1.length();
            int j = 0;
            if (i > 0) {
                JSONArray localJSONArray2 = localJSONArray1.getJSONArray(0);
                j = 0;
                if (localJSONArray2 != null) {
                    int k = localJSONArray2.length();
                    j = 0;
                    if (k > 0) {
                        int m = localJSONArray2.getJSONObject(0).getInt("serialnum");
                        j = m;
                    }
                }
            }
            return j;
        } catch (JSONException localJSONException) {
            localJSONException.printStackTrace();
        }
        return 0;
    }
}

