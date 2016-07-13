package com.clilystudio.netbook.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class CharacterUtil {
    private static CharacterUtil a;
    private Map<Character, Character> b;

    private CharacterUtil(Context context) {
        List<Character> list = CharacterUtil.a(context, "ts.tab", "UTF-8");
        if (list.size() % 2 != 0) {
            throw new RuntimeException("The conversion table may be damaged or not exists");
        }
        this.b = new HashMap<>();
        for (int i = 0; i < list.size(); i += 2) {
            this.b.put(list.get(i + 1), list.get(i));
        }
    }

    public static CharacterUtil a(Context context) {
        if (a == null) {
            a = new CharacterUtil(context);
        }
        return a;
    }

    private static List<Character> a(Context context, String string, String charsetName) {
        ArrayList<Character> arrayList = new ArrayList<>();
        Resources resources = context.getResources();
        AssetManager assets = resources.getAssets();
        BufferedReader bufferedReader = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(assets.open(string), charsetName));
            int n;
            while ((n = bufferedReader.read()) != -1) {
                arrayList.add((char) n);
            }
            return arrayList;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public final Character a(char c) {
        if (this.b.get(c) == null) {
            return c;
        }
        return this.b.get(c);
    }
}
