package com.clilystudio.netbook.model;

public class InsideLinkFactory {
    public static InsideLink create(String string, String string2) {
        return new InsideLink(InsideLinkType.build(string), string2);
    }

    public static InsideLink create(String string, String string2, String string3) {
        return new InsideLink(InsideLinkType.build(string), string2, string3);
    }
}
