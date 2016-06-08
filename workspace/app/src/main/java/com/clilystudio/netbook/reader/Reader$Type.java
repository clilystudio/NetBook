package com.clilystudio.netbook.reader;

public enum Reader$Type {
    static {
        Type[] arrayOfType = new Type[2];
        arrayOfType[0] = CHAPTER;
        arrayOfType[1] = TOC;
        a = arrayOfType;
    }

    private int code;

    private Reader$Type(int paramInt) {
        this.code = paramInt;
    }

    public final ae getListener(Reader paramReader) {
        if (this.code == 0)
            return Reader.a(paramReader);
        return Reader.b(paramReader);
    }
}

