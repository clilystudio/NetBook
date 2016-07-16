package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.util.TempUtil;
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
            chapter.setBody(TempUtil.getBody(string3));
            String string4 = jSONObject.getString("serialid");
            String string5 = jSONObject.getString("serialurl");
            chapter.setLink(string4 + "_" + string5);
            chapterRoot = new ChapterRoot();
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        } catch (JSONException var2_10) {
            var2_10.printStackTrace();
            return null;
        }
    }

    public static String getChapterUrl(String string) {
        try {
            JSONArray jSONArray = new JSONArray(new JSONObject(string).getString("rows"));
            String string2 = null;
            if (jSONArray.length() > 0) {
                JSONArray jSONArray2 = jSONArray.getJSONArray(0);
                string2 = null;
                if (jSONArray2 != null) {
                    if (jSONArray2.length() > 0) {
                        string2 = jSONArray2.getJSONObject(0).getString("serialurl");
                    }
                }
            }
            return string2;
        } catch (JSONException var2_7) {
            var2_7.printStackTrace();
            return null;
        }
    }

    public static int getTocCount(String string) {
        try {
            JSONArray jSONArray = new JSONArray(new JSONObject(string).getString("rows"));
            int n = 0;
            if (jSONArray.length() > 0) {
                JSONArray jSONArray2 = jSONArray.getJSONArray(0);
                n = 0;
                if (jSONArray2 != null) {
                     n = 0;
                    if (jSONArray2.length() > 0) {
                        n = jSONArray2.getJSONObject(0).getInt("serialnum");
                    }
                }
            }
            return n;
        } catch (JSONException var2_7) {
            var2_7.printStackTrace();
            return 0;
        }
    }
}
