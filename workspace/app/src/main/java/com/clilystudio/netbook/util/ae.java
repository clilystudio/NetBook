package com.clilystudio.netbook.util;

import android.text.TextUtils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ae {

    private String[][] b = {
            {"\uFF01", "!"},
            {"\uFF1F", "?"},
            {"\uFF08", "("},
            {"\uFF09", ")"},
            {"\u3002", "."},
            {"\uFF0C", ","},
            {"\uFF1B", ";"},
            {"\uFF1A", ":"},
            {"\u3001", ","},
            {"\u3014", "("},
            {"\u3015", ")"},
            {"\u3000", " "},
            {"\uFF10", "0"},
            {"\uFF11", "1"},
            {"\uFF12", "2"},
            {"\uFF13", "3"},
            {"\uFF14", "4"},
            {"\uFF15", "5"},
            {"\uFF16", "6"},
            {"\uFF17", "7"},
            {"\uFF18", "8"},
            {"\uFF19", "9"}
    };
    private String[][] c = {
            {"\u96F6", "0"},
            {"\u4E00", "1"},
            {"\u4E8C", "2"},
            {"\u4E24", "2"},
            {"\u4E09", "3"},
            {"\u56DB", "4"},
            {"\u4E94", "5"},
            {"\u516D", "6"},
            {"\u4E03", "7"},
            {"\u516B", "8"},
            {"\u4E5D", "9"}
    };
    private String[][] d = {
            {"\u4E07", "10000"},
            {"\u5343", "1000"},
            {"\u767E", "100"},
            {"\u5341", "10"}
    };
    private Map e = new HashMap();
    private Map f = new HashMap();
    private Map g = new HashMap();
    private ak a = new ak();
    public ae() {
        a();
    }

    private af a(String String1) {
        Matcher Matcher2 = Pattern.compile("[\u7AE0|\u7B2C]?(\\d+)[\u7AE0|\u8282|\u56DE]([^\\(]*)(\\(.+?\\))?").matcher((CharSequence) String1);
        String String3;
        int int4;

        if (!Matcher2.find())
            return new af(this, 0, String1, "");
        String3 = Matcher2.group(1);
        int4 = 0;
        if (String3 != null)
            int4 = Integer.parseInt(String3);
        return new af(this, int4, Matcher2.group(2), Matcher2.group(3));
    }

    private void a() {
        String[][] String_2darray1;
        int int2;
        int int3;
        String[][] String_2darray4;
        int int5;
        int int6;
        String[][] String_2darray7;
        int int8;
        int int9;

        e.clear();
        String_2darray1 = b;
        int2 = String_2darray1.length;
        for (int3 = 0; int3 < int2; ++int3) {
            String[] String_1darray14 = String_2darray1[int3];

            e.put(String_1darray14[0], String_1darray14[1]);
        }
        f.clear();
        String_2darray4 = c;
        int5 = String_2darray4.length;
        for (int6 = 0; int6 < int5; ++int6) {
            String[] String_1darray12 = String_2darray4[int6];

            f.put(String_1darray12[0], Integer.valueOf(Integer.parseInt(String_1darray12[1])));
        }
        g.clear();
        String_2darray7 = d;
        int8 = String_2darray7.length;
        for (int9 = 0; int9 < int8; ++int9) {
            String[] String_1darray10 = String_2darray7[int9];

            g.put(String_1darray10[0], Integer.valueOf(String_1darray10[1]));
        }
    }

    private String b(String String1) {
        Object Object2 = "";
        Iterator Iterator3 = e.keySet().iterator();
        StringBuffer StringBuffer4;
        Matcher Matcher5;
        String String7;

        while (Iterator3.hasNext()) {
            String String10 = (String) Iterator3.next();

            if (!android.text.TextUtils.isEmpty((CharSequence) Object2))
                Object2 = new StringBuilder().append((String) Object2).append("|").toString();
            Object2 = new StringBuilder().append((String) Object2).append(String.valueOf(String10)).toString();
        }
        StringBuffer4 = new StringBuffer();
        Matcher5 = Pattern.compile((String) Object2).matcher((CharSequence) String1);
        while (Matcher5.find())
            Matcher5.appendReplacement(StringBuffer4, String.valueOf(e.get(Matcher5.group())));
        Matcher5.appendTail(StringBuffer4);
        String7 = c(StringBuffer4.toString()).replaceAll("[\\(|\u3010|\\[]((?![\u4E0A\u4E2D\u4E0B1-9])[^\\(|\u3010|\\[]+?)[\\)|\u3011|\\]]$", "");
        String7.trim();
        return String7;
    }

    private String c(String String1) {
        StringBuffer StringBuffer2 = new StringBuffer();
        Matcher Matcher3 = Pattern.compile(new StringBuilder("[").append(com.clilystudio.netbook.hpay100.a.a.a((Iterable) f.keySet(), "|")).append("|").append(com.clilystudio.netbook.hpay100.a.a.a((Iterable) g.keySet(), "|")).append("]+").toString()).matcher((CharSequence) String1);

        while (Matcher3.find())
            Matcher3.appendReplacement(StringBuffer2, String.valueOf(d(Matcher3.group())));
        Matcher3.appendTail(StringBuffer2);
        return StringBuffer2.toString();
    }

    private int d(String String1) {
        int[] int_1darray2 = new int[String1.length()];
        int int3;
        int int4;
        int int5;
        int int6;
        int int7;
        int int10;

        for (int3 = 0; int3 < String1.length(); ++int3) {
            String String11 = String.valueOf(String1.charAt(int3));

            if (f.containsKey(String11))
                int_1darray2[int3] = ((Integer) f.get(String11)).intValue();
            else if (g.containsKey(String11))
                int_1darray2[int3] = ((Integer) g.get(String11)).intValue();
        }
        int4 = int_1darray2.length;
        int5 = 0;
        int6 = 0;
        for (int7 = 0; int5 < int4; int7 = int10) {
            int int8 = int_1darray2[int5];
            int int9;

            if (int8 >= 10)
                int9 = 1;
            else
                int9 = 0;
            if (int9 != 0) {
                if (int6 == 0)
                    int6 = 1;
                int10 = int7 + int6 * int8;
                int6 = 0;
            } else {
                int6 = int8;
                int10 = int7;
            }
            ++int5;
        }
        return int6 + int7;
    }

    public final boolean a(String String1, String String2) {
        boolean boolean3 = true;

        if (TextUtils.isEmpty((CharSequence) String1) || TextUtils.isEmpty((CharSequence) String2))
            boolean3 = false;
        else if (!String1.equals(String2)) {
            String String4 = b(String1);
            String String5 = b(String2);

            if (!String4.equals(String5)) {
                af af6 = a(String4);
                af af7 = a(String5);

                if (af.a(af6) != af.a(af7) || !android.text.TextUtils.equals((CharSequence) af6.b(), (CharSequence) af7.b()))
                    return false;
                else if (a.a(af6.a(), af7.a()) < 0.5F)
                    return false;
            }
        }
        return boolean3;
    }
}
