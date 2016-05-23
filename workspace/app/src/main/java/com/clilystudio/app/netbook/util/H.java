package com.clilystudio.app.netbook.util;

import android.content.Context;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class H {
    private static H instance;
    private Map<Character, Character> convertMap;

    private H(Context paramContext) {
        List<Character> localList = a_loadConvertList(paramContext, "ts.tab", "UTF-8");
        if (localList.size() % 2 != 0)
            throw new RuntimeException("The conversion table may be damaged or not exists");
        this.convertMap = new HashMap<Character, Character>();
        for (int i = 0; i < localList.size(); i += 2)
            this.convertMap.put(localList.get(i + 1), localList.get(i));
    }

    public static H a_getInstance(Context context) {
        if (instance == null) {
            instance = new H(context);
        }
        return instance;
    }

    private static List<Character> a_loadConvertList(Context context, String fileName, String charsetName) {
        ArrayList<Character> localArrayList = new ArrayList<Character>();
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open(fileName), charsetName));
            int i = reader.read();
            while (i != -1) {
                localArrayList.add((char) i);
            }
            reader.close();
         } catch (IOException e) {
            e.printStackTrace();
        }
        return localArrayList;
    }

    public final Character a_convertChar(char paramChar) {
        Character character = paramChar;
        Character character1 = this.convertMap.get(character);
        if (character1 == null) {
            return character;
        } else {
            return character1;
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.H
 * JD-Core Version:    0.6.2
 */