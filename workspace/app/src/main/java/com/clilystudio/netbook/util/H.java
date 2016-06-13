package com.clilystudio.netbook.util;

import android.content.Context;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class H {
    private static H a;
    private Map<Character, Character> b;

    private H(Context context) {
        List<Character> list = H.a(context, "ts.tab", "UTF-8");
        if (list.size() % 2 != 0) {
            throw new RuntimeException("The conversion table may be damaged or not exists");
        }
        this.b = new HashMap<Character, Character>();
        for (int i = 0; i < list.size(); i += 2) {
            this.b.put(list.get(i + 1), list.get(i));
        }
    }

    public static H a(Context context) {
        if (a == null) {
            a = new H(context);
        }
        return a;
    }

    private static List<Character> a(Context context, String string, String string2) {
        int n;
        ArrayList<Character> arrayList = new ArrayList<Character>();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open(string), string2));
        while ((n = bufferedReader.read()) != -1) {
            arrayList.add(Character.valueOf((char) n));
        }
        bufferedReader.close();
        return arrayList;
    }

    public final Character a(char c) {
        if (this.b.get(Character.valueOf(c)) == null) {
            return Character.valueOf(c);
        }
        return this.b.get(Character.valueOf(c));
    }
}
