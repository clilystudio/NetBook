package com.clilystudio.app.netbook.util;

import android.text.TextUtils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ae {
    private ak a = new ak();
    private String[][] b = {{"！", "!"}, {"？", "?"}, {"（", "("}, {"）", ")"}, {"。", "."}, {"，", ","}, {"；", ";"}, {"：", ":"}, {"、", ","}, {"〔", "("}, {"〕", ")"}, {"　", " "}, {"０", "0"}, {"１", "1"}, {"２", "2"}, {"３", "3"}, {"４", "4"}, {"５", "5"}, {"６", "6"}, {"７", "7"}, {"８", "8"}, {"９", "9"}};
    private String[][] c = {{"零", "0"}, {"一", "1"}, {"二", "2"}, {"两", "2"}, {"三", "3"}, {"四", "4"}, {"五", "5"}, {"六", "6"}, {"七", "7"}, {"八", "8"}, {"九", "9"}};
    private String[][] d = {{"万", "10000"}, {"千", "1000"}, {"百", "100"}, {"十", "10"}};
    private Map<String, String> e = new HashMap();
    private Map<String, Integer> f = new HashMap();
    private Map<String, Integer> g = new HashMap();

    public ae() {
        a();
    }

    private af a(String paramString) {
        Matcher localMatcher = Pattern.compile("[章|第]?(\\d+)[章|节|回]([^\\(]*)(\\(.+?\\))?").matcher(paramString);
        if (localMatcher.find()) {
            String str = localMatcher.group(1);
            int i = 0;
            if (str == null) ;
            while (true) {
                return new af(this, i, localMatcher.group(2), localMatcher.group(3));
                i = Integer.parseInt(str);
            }
        }
        return new af(this, 0, paramString, "");
    }

    private void a() {
        this.e.clear();
        for (String[] arrayOfString6 : this.b)
            this.e.put(arrayOfString6[0], arrayOfString6[1]);
        this.f.clear();
        for (String[] arrayOfString5 : this.c)
            this.f.put(arrayOfString5[0], Integer.valueOf(Integer.parseInt(arrayOfString5[1])));
        this.g.clear();
        for (String[] arrayOfString4 : this.d)
            this.g.put(arrayOfString4[0], Integer.valueOf(arrayOfString4[1]));
    }

    private String b(String paramString) {
        String str1 = "";
        Iterator localIterator = this.e.keySet().iterator();
        while (localIterator.hasNext()) {
            String str3 = (String) localIterator.next();
            if (!TextUtils.isEmpty(str1))
                str1 = str1 + "|";
            str1 = str1 + String.valueOf(str3);
        }
        StringBuffer localStringBuffer = new StringBuffer();
        Matcher localMatcher = Pattern.compile(str1).matcher(paramString);
        while (localMatcher.find())
            localMatcher.appendReplacement(localStringBuffer, String.valueOf(this.e.get(localMatcher.group())));
        localMatcher.appendTail(localStringBuffer);
        String str2 = c(localStringBuffer.toString()).replaceAll("[\\(|【|\\[]((?![上中下1-9])[^\\(|【|\\[]+?)[\\)|】|\\]]$", "");
        str2.trim();
        return str2;
    }

    private String c(String paramString) {
        StringBuffer localStringBuffer = new StringBuffer();
        Matcher localMatcher = Pattern.compile("[" + a.a(this.f.keySet(), "|") + "|" + a.a(this.g.keySet(), "|") + "]+").matcher(paramString);
        while (localMatcher.find())
            localMatcher.appendReplacement(localStringBuffer, String.valueOf(d(localMatcher.group())));
        localMatcher.appendTail(localStringBuffer);
        return localStringBuffer.toString();
    }

    private int d(String paramString) {
        int[] arrayOfInt = new int[paramString.length()];
        int i = 0;
        if (i < paramString.length()) {
            String str = String.valueOf(paramString.charAt(i));
            if (this.f.containsKey(str))
                arrayOfInt[i] = ((Integer) this.f.get(str)).intValue();
            while (true) {
                i++;
                break;
                if (this.g.containsKey(str))
                    arrayOfInt[i] = ((Integer) this.g.get(str)).intValue();
            }
        }
        int j = arrayOfInt.length;
        int k = 0;
        int m = 0;
        int n = 0;
        if (k < j) {
            int i1 = arrayOfInt[k];
            int i2;
            label140:
            int i3;
            if (i1 >= 10) {
                i2 = 1;
                if (i2 == 0)
                    break label182;
                if (m == 0)
                    m = 1;
                i3 = n + m * i1;
                m = 0;
            }
            while (true) {
                k++;
                n = i3;
                break;
                i2 = 0;
                break label140;
                label182:
                m = i1;
                i3 = n;
            }
        }
        return m + n;
    }

    public final boolean a(String paramString1, String paramString2) {
        boolean bool = true;
        if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
            bool = false;
        af localaf1;
        af localaf2;
        do {
            String str1;
            String str2;
            do {
                do
                    return bool;
                while (paramString1.equals(paramString2));
                str1 = b(paramString1);
                str2 = b(paramString2);
            }
            while (str1.equals(str2));
            localaf1 = a(str1);
            localaf2 = a(str2);
            if ((af.a(localaf1) != af.a(localaf2)) || (!TextUtils.equals(localaf1.b(), localaf2.b())))
                return false;
        }
        while (this.a.a(localaf1.a(), localaf2.a()) >= 0.5F);
        return false;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.ae
 * JD-Core Version:    0.6.2
 */