package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterRoot;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SsChapterJson {

    public static ChapterRoot getChapterRoot(String String1) {
        ChapterRoot ChapterRoot4;
        JSONException JSONException5;
        JSONArray JSONArray6;
        JSONObject JSONObject7;
        Chapter Chapter8;
        String String9;
        String String10;

        try {
            JSONArray JSONArray2 = new JSONArray(new JSONObject(String1).getString("rows"));

            if (JSONArray2.length() <= 0)
                return null;
            JSONArray6 = JSONArray2.getJSONArray(0);
        } catch (JSONException JSONException3) {
            ChapterRoot4 = null;
            JSONException5 = JSONException3;
            JSONException5.printStackTrace();
            return ChapterRoot4;
        }
        if (JSONArray6 == null || JSONArray6.length() <= 0)
            return null;
        JSONObject7 = JSONArray6.getJSONObject(0);
        Chapter8 = new Chapter();
        String9 = JSONObject7.getString("serialcontent");
        if (String9 != null) {
            try {
                String String11;
                String String12;

                String10 = String9.replaceAll("<br>", "\n");
                Chapter8.setBody(a.z(String10));
                String11 = JSONObject7.getString("serialid");
                String12 = JSONObject7.getString("serialurl");
                Chapter8.setLink(new StringBuilder().append(String11).append("_").append(String12).toString());
                ChapterRoot4 = new ChapterRoot();
            } catch (JSONException JSONException13) {
                ChapterRoot4 = null;
                JSONException5 = JSONException13;
                JSONException5.printStackTrace();
                return ChapterRoot4;
            }
        } else
            String10 = null;
        try {
            ChapterRoot4.setChapter(Chapter8);
        } catch (JSONException JSONException14) {
            JSONException14.printStackTrace();
            return ChapterRoot4;
        }
        return ChapterRoot4;
    }

    public static String getChapterUrl(String String1) {
        JSONArray JSONArray2;
        int int4;
        String String5;

        try {
            JSONArray2 = new JSONArray(new JSONObject(String1).getString("rows"));
            int4 = JSONArray2.length();
        } catch (JSONException JSONException3) {
            JSONException3.printStackTrace();
            return null;
        }
        String5 = null;
        if (int4 > 0) {
            JSONArray JSONArray6;

            try {
                JSONArray6 = JSONArray2.getJSONArray(0);
            } catch (JSONException JSONException9) {
                JSONException9.printStackTrace();
                return null;
            }
            String5 = null;
            if (JSONArray6 != null) {
                int int7;

                try {
                    int7 = JSONArray6.length();
                } catch (JSONException JSONException10) {
                    JSONException10.printStackTrace();
                    return null;
                }
                String5 = null;
                if (int7 > 0) {
                    String String8;

                    try {
                        String8 = JSONArray6.getJSONObject(0).getString("serialurl");
                    } catch (JSONException JSONException11) {
                        JSONException11.printStackTrace();
                        return null;
                    }
                    String5 = String8;
                }
            }
        }
        return String5;
    }

    public static int getTocCount(String String1) {
        JSONArray JSONArray2;
        int int4;
        int int5;

        try {
            JSONArray2 = new JSONArray(new JSONObject(String1).getString("rows"));
            int4 = JSONArray2.length();
        } catch (JSONException JSONException3) {
            JSONException3.printStackTrace();
            return 0;
        }
        int5 = 0;
        if (int4 > 0) {
            JSONArray JSONArray6;

            try {
                JSONArray6 = JSONArray2.getJSONArray(0);
            } catch (JSONException JSONException9) {
                JSONException9.printStackTrace();
                return 0;
            }
            int5 = 0;
            if (JSONArray6 != null) {
                int int7;

                try {
                    int7 = JSONArray6.length();
                } catch (JSONException JSONException10) {
                    JSONException10.printStackTrace();
                    return 0;
                }
                int5 = 0;
                if (int7 > 0) {
                    int int8;

                    try {
                        int8 = JSONArray6.getJSONObject(0).getInt("serialnum");
                    } catch (JSONException JSONException11) {
                        JSONException11.printStackTrace();
                        return 0;
                    }
                    int5 = int8;
                }
            }
        }
        return int5;
    }
}
