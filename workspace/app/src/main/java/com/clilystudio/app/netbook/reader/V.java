package com.clilystudio.app.netbook.reader;

import java.util.List;

final class V extends Z {
    V(U paramU, int paramInt1, int paramInt2) {
        super(paramU.a, paramInt1);
    }

    public final void a(ReaderChapter paramReaderChapter) {
        List localList = (List) U.a(this.b).remove(Integer.valueOf(this.a));
        if (localList != null)
            Reader.d(this.b.a).post(new W(this, localList, paramReaderChapter));
        Integer localInteger = (Integer) U.b(this.b).remove(Integer.valueOf(this.a));
        if (localInteger != null)
            while (localInteger.intValue() != 0) {
                Reader.a(this.b.a, 1, Reader.Type.CHAPTER);
                localInteger = Integer.valueOf(-1 + localInteger.intValue());
            }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.V
 * JD-Core Version:    0.6.2
 */