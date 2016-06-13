package com.clilystudio.netbook.reader;

public final class Reader$Type
        extends Enum<Reader$Type> {
    public static final /* enum */ Reader$Type CHAPTER = new Reader$Type(0);
    public static final /* enum */ Reader$Type TOC = new Reader$Type(1);
    private static final /* synthetic */ Reader$Type[] a;

    static {
        Reader$Type[] arrreader$Type = new Reader$Type[]{CHAPTER, TOC};
        a = arrreader$Type;
    }

    private int code;

    private Reader$Type(int n2) {
        super(string, n);
        this.code = n2;
    }

    public static Reader$Type valueOf(String string) {
        return (Reader$Type) ((Object) Enum.valueOf(Reader$Type.class, string));
    }

    public static Reader$Type[] values() {
        return (Reader$Type[]) a.clone();
    }

    public final ae getListener(Reader reader) {
        if (this.code == 0) {
            return Reader.a(reader);
        }
        return Reader.b(reader);
    }
}
