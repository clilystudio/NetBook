package com.clilystudio.netbook.reader;

import java.util.List;

final class X
        implements e<ReaderChapter> {
    private /* synthetic */ List a;
    private /* synthetic */ Reader b;

    X(Reader reader, List list) {
        this.b = reader;
        this.a = list;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        if (this.a.size() > 1) {
            Reader.a(this.b, this.a.subList(1, this.a.size()));
        }
    }
}
