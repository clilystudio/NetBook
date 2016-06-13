package com.clilystudio.netbook.reader;

import java.util.List;

final class V
        extends Z {
    private /* synthetic */ int a;
    private /* synthetic */ U b;

    V(U u, int n, int n2) {
        this.b = u;
        this.a = n2;
        super(u.a, n);
    }

    @Override
    public final void a(ReaderChapter readerChapter) {
        Integer n;
        List list = (List) U.a(this.b).remove(this.a);
        if (list != null) {
            Reader.d(this.b.a).post(new W(this, list, readerChapter));
        }
        if ((n = (Integer) U.b(this.b).remove(this.a)) != null) {
            while (n != 0) {
                Reader.a(this.b.a, 1, Reader$Type.CHAPTER);
                n = -1 + n;
            }
        }
    }
}
