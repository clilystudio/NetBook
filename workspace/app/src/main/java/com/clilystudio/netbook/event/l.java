package com.clilystudio.netbook.event;

import com.clilystudio.netbook.db.BookReadRecord;

public final class l {
    private boolean a = true;
    private BookReadRecord b;

    public l(BookReadRecord paramBookReadRecord) {
        this.b = paramBookReadRecord;
    }

    public final boolean a() {
        return this.a;
    }

    public final BookReadRecord b() {
        return this.b;
    }
}

