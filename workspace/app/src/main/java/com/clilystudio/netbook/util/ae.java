package com.clilystudio.netbook.util;

import android.text.TextUtils;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ae {
    private ChapterSameCalculator a = new ChapterSameCalculator();
    private String[][] b = new String[][]{{"！", "!"}, {"？", "?"}, {"（", "("}, {"）", ")"}, {"。", "."},
            {"，", ","}, {"；", ";"}, {"：", ":"}, {"、", ","}, {"〔", "("}, {"〕", ")"},
            {"　", " "}, {"０", "0"}, {"１", "1"}, {"２", "2"}, {"３", "3"}, {"４", "4"}, {"５", "5"},
            {"６", "6"}, {"７", "7"}, {"８", "8"}, {"９", "9"}};
    private String[][] c = new String[][]{{"零", "0"}, {"一", "1"}, {"二", "2"}, {"两", "2"}, {"三", "3"},
            {"四", "4"}, {"五", "5"}, {"六", "6"}, {"七", "7"}, {"八", "8"}, {"九", "9"}};
    private String[][] d = new String[][]{{"万", "10000"}, {"千", "1000"}, {"百", "100"}, {"十", "10"}};
    private Map<String, String> e = new HashMap<>();
    private Map<String, Integer> f = new HashMap<>();
    private Map<String, Integer> g = new HashMap<>();

    public ae() {
        this.a();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ChapterInfo a(String string) {
        Matcher matcher = Pattern.compile("[章|第]?(\\d+)[章|节|回]([^\\(]*)(\\(.+?\\))?").matcher(string);
        if (!matcher.find()) {
            return new ChapterInfo(0, string, "");
        }
        String string2 = matcher.group(1);
        int n = 0;
        if (string2 != null) {
            n = Integer.parseInt(string2);
        }
        return new ChapterInfo(n, matcher.group(2), matcher.group(3));
    }

    private void a() {
        this.e.clear();
        for (String[] arrstring : this.b) {
            this.e.put(arrstring[0], arrstring[1]);
        }
        this.f.clear();
        for (String[] arrstring2 : this.c) {
            this.f.put(arrstring2[0], Integer.parseInt(arrstring2[1]));
        }
        this.g.clear();
        for (String[] arrstring3 : this.d) {
            this.g.put(arrstring3[0], Integer.valueOf(arrstring3[1]));
        }
    }

    private String b(String string) {
        String string2 = "";
        for (String string3 : this.e.keySet()) {
            if (!TextUtils.isEmpty(string2)) {
                string2 = string2 + "|";
            }
            string2 = string2 + String.valueOf(string3);
        }
        StringBuffer stringBuffer = new StringBuffer();
        Matcher matcher = Pattern.compile(string2).matcher(string);
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, String.valueOf(this.e.get(matcher.group())));
        }
        matcher.appendTail(stringBuffer);
        String string4 = this.c(stringBuffer.toString()).replaceAll("[\\(|\u3010|\\[]((?![\u4e0a\u4e2d\u4e0b1-9])[^\\(|\u3010|\\[]+?)[\\)|\u3011|\\]]$", "");
        string4.trim();
        return string4;
    }

    private String c(String string) {
        StringBuffer stringBuffer = new StringBuffer();
        Matcher matcher = Pattern.compile("[" + com.clilystudio.netbook.hpay100.a.a.a(this.f.keySet(), "|") + "|" + com.clilystudio.netbook.hpay100.a.a.a(this.g.keySet(), "|") + "]+").matcher(string);
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, String.valueOf(this.d(matcher.group())));
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    private int d(String string) {
        int[] arrn = new int[string.length()];
        for (int j = 0; j < string.length(); ++j) {
            String string2 = String.valueOf(string.charAt(j));
            if (this.f.containsKey(string2)) {
                arrn[j] = this.f.get(string2);
                continue;
            }
            if (!this.g.containsKey(string2)) continue;
            arrn[j] = this.g.get(string2);
        }
        int n = arrn.length;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        while (n2 < n) {
            int n5;
            int n6 = arrn[n2];
            boolean bl = n6 >= 10;
            if (bl) {
                if (n3 == 0) {
                    n3 = 1;
                }
                n5 = n4 + n3 * n6;
                n3 = 0;
            } else {
                n3 = n6;
                n5 = n4;
            }
            ++n2;
            n4 = n5;
        }
        return n3 + n4;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final boolean a(String string, String string2) {
        String string3;
        boolean bl = true;
        if (TextUtils.isEmpty(string)) return false;
        if (TextUtils.isEmpty(string2)) {
            return false;
        }
        if (string.equals(string2)) return bl;
        String string4 = this.b(string);
        if (string4.equals(string3 = this.b(string2))) return bl;
        ChapterInfo af2 = this.a(string4);
        ChapterInfo af3 = this.a(string3);
        return af2.getChapterNo() == af3.getChapterNo() && TextUtils.equals(af2.getChapterName(), af3.getChapterName()) && this.a.a(af2.getVolumeName(), af3.getVolumeName()) >= 0.5f && bl;
    }

    static final class ChapterInfo {
        private int mChapterNo;
        private String mVolumeName;
        private String mChapterName;

        ChapterInfo(int chapterNo, String volumeName, String chapterName) {
            this.mChapterNo = chapterNo;
            this.mVolumeName = volumeName;
            this.mChapterName = chapterName;
        }

        public final int getChapterNo() {
            return this.mChapterNo;
        }

        public final String getVolumeName() {
            return this.mVolumeName;
        }

        public final String getChapterName() {
            return this.mChapterName;
        }
    }

}
