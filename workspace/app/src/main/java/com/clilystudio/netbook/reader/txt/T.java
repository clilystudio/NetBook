package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.db.BookFile;

import java.io.File;

final class T {

    private boolean a;
    private BookFile b;
    private long c;
    T(ScanTxtFileActivity ScanTxtFileActivity1, File File2, byte byte3) {
        this(ScanTxtFileActivity1, File2);
    }

    private T(ScanTxtFileActivity ScanTxtFileActivity1, BookFile BookFile2) {
        b = BookFile2;
    }

    private T(ScanTxtFileActivity ScanTxtFileActivity1, File File2) {
        this(ScanTxtFileActivity1, new BookFile(File2));
        c = File2.lastModified();
    }

    public final BookFile a() {
        return b;
    }

    public final void a(boolean boolean1) {
        a = boolean1;
    }

    public final boolean b() {
        return a;
    }

    public final void c() {
        boolean boolean1;

        if (!a)
            boolean1 = true;
        else
            boolean1 = false;
        a = boolean1;
    }

    public final long d() {
        return c;
    }
}
