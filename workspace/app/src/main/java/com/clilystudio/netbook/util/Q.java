package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.ReaderChapterIdentifier;
import com.clilystudio.netbook.reader.ReaderChapter;

import java.util.HashMap;
import java.util.Map;

public final class Q {
    private static HashMap<ReaderChapterIdentifier, Map<Integer, ReaderChapter>> a = new HashMap();

    private Q() {
    }

    public static ReaderChapter a(String string, String string2, int n) {
        ReaderChapterIdentifier readerChapterIdentifier = new ReaderChapterIdentifier(string, string2);
        Map<Integer, ReaderChapter> map = a.get(readerChapterIdentifier);
        if (map == null) {
            return null;
        }
        return map.get(n);
    }

    public static Q a() {
        return new Q();
    }

    public static void a(String string, String string2, Map<Integer, ReaderChapter> map) {
        ReaderChapterIdentifier readerChapterIdentifier = new ReaderChapterIdentifier(string, string2);
        if (a.get(readerChapterIdentifier) != null) {
            return;
        }
        a.put(readerChapterIdentifier, new HashMap<>(map));
    }
}
