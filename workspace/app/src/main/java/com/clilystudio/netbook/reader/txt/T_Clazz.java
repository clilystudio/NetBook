package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.db.BookFile;

import java.io.File;

final class T_Clazz {
    private boolean a;
    private BookFile b;
    private long c;

    private T_Clazz(BookFile bookFile) {
        this.b = bookFile;
    }

    public T_Clazz(File file) {
        this(new BookFile(file));
        this.c = file.lastModified();
    }

    public final BookFile a() {
        return this.b;
    }

    public final void a(boolean bl) {
        this.a = bl;
    }

    public final boolean b() {
        return this.a;
    }

    public final void c() {
        this.a = !this.a;
    }

    public final long d() {
        return this.c;
    }
}
