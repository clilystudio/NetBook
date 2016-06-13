package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterRoot;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SsChapterJson {
    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static ChapterRoot getChapterRoot(String string) {
        Chapter chapter;
        ChapterRoot chapterRoot;
        try {
            JSONArray jSONArray = new JSONArray(new JSONObject(string).getString("rows"));
            if (jSONArray.length() <= 0) return null;
            JSONArray jSONArray2 = jSONArray.getJSONArray(0);
            if (jSONArray2 == null) return null;
            if (jSONArray2.length() <= 0) return null;
            JSONObject jSONObject = jSONArray2.getJSONObject(0);
            chapter = new Chapter();
            String string2 = jSONObject.getString("serialcontent");
            String string3 = string2 != null ? string2.replaceAll("<br>", "\n") : null;
            chapter.setBody(a.z(string3));
            String string4 = jSONObject.getString("serialid");
            String string5 = jSONObject.getString("serialurl");
            chapter.setLink(string4 + "_" + string5);
            chapterRoot = new ChapterRoot();
        } catch (JSONException var2_10) {
            chapterRoot = null;
            JSONException jSONException = var2_10;
            jSONException.printStackTrace();
            return chapterRoot;
        }
        chapterRoot.setChapter(chapter);
        return chapterRoot;
        {
            catch(JSONException jSONException){
        }
        }
    }

    public static String getChapterUrl(String string) {
        String string2;
        block5:
        {
            String string3;
            JSONArray jSONArray;
            try {
                jSONArray = new JSONArray(new JSONObject(string).getString("rows"));
                int n = jSONArray.length();
                string2 = null;
                if (n <= 0) break block5;
            } catch (JSONException var2_7) {
                var2_7.printStackTrace();
                return null;
            }
            JSONArray jSONArray2 = jSONArray.getJSONArray(0);
            string2 = null;
            if (jSONArray2 == null) break block5;
            int n = jSONArray2.length();
            string2 = null;
            if (n <= 0) break block5;
            string2 = string3 = jSONArray2.getJSONObject(0).getString("serialurl");
        }
        return string2;
    }

    public static int getTocCount(String string) {
        int n;
        block5:
        {
            int n2;
            JSONArray jSONArray;
            try {
                jSONArray = new JSONArray(new JSONObject(string).getString("rows"));
                int n3 = jSONArray.length();
                n = 0;
                if (n3 <= 0) break block5;
            } catch (JSONException var2_7) {
                var2_7.printStackTrace();
                return 0;
            }
            JSONArray jSONArray2 = jSONArray.getJSONArray(0);
            n = 0;
            if (jSONArray2 == null) break block5;
            int n4 = jSONArray2.length();
            n = 0;
            if (n4 <= 0) break block5;
            n = n2 = jSONArray2.getJSONObject(0).getInt("serialnum");
        }
        return n;
    }
}
