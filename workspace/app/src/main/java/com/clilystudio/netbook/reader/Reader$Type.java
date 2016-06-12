package com.clilystudio.netbook.reader;

public final class Reader$Type extends Enum {

    public static final Reader$Type CHAPTER = new Reader$Type("CHAPTER", 0, 0);
    public static final Reader$Type TOC = new Reader$Type("TOC", 1, 1);
    private static Reader$Type[] a;     // final access specifier removed

    static {
        Reader$Type[] Type_1darray1 = new Reader$Type[2];

        Type_1darray1[0] = CHAPTER;
        Type_1darray1[1] = TOC;
        a = Type_1darray1;
    }

    private int code;
// Error: Internal #201: 
// The following method may not be correct.

    private Reader$Type(String String1, int int2, int int3) {
        super(String1, int2);
        code = int3;
    }

    public static Reader$Type valueOf(String String1) {
    }

    public static Reader$Type[] values() {
        return (Reader$Type[]) a.clone();
    }

    public final ae getListener(Reader Reader1) {
        if (code == 0)
            return Reader.a(Reader1);
        else
            return Reader.b(Reader1);
    }
}
