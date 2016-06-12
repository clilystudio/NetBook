package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.ReaderChapterIdentifier;
import com.clilystudio.netbook.reader.ReaderChapter;

import java.util.HashMap;
import java.util.Map;

public final class Q {

    private static HashMap a = new HashMap();

    public static ReaderChapter a(String String1, String String2, int int3) {
        ReaderChapterIdentifier ReaderChapterIdentifier4 = new ReaderChapterIdentifier(String1, String2);
        Map Map5 = (Map) a.get(ReaderChapterIdentifier4);

        if (Map5 == null)
            return null;
        else
            return (ReaderChapter) Map5.get(Integer.valueOf(int3));
    }

    public static Q a() {
        return new Q();
    }

    public static void a(String String1, String String2, Map Map3) {
        ReaderChapterIdentifier ReaderChapterIdentifier4 = new ReaderChapterIdentifier(String1, String2);

        if (a.get(ReaderChapterIdentifier4) == null)
            a.put(ReaderChapterIdentifier4, new HashMap(Map3));
    }
}
