package com.clilystudio.app.netbook.model;

public class InsideLinkFactory {
    public static InsideLink create(String paramString1, String paramString2) {
        return new InsideLink(InsideLinkType.build(paramString1), paramString2);
    }

    public static InsideLink create(String paramString1, String paramString2, String paramString3) {
        return new InsideLink(InsideLinkType.build(paramString1), paramString2, paramString3);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.InsideLinkFactory
 * JD-Core Version:    0.6.2
 */