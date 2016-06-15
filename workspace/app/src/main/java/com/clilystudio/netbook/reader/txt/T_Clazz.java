package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.db.BookFile;

import java.io.File;

final class T_Clazz {
    private boolean a;
    private BookFile b;
    private long c;

    private T_Clazz(ScanTxtFileActivity scanTxtFileActivity, BookFile bookFile) {
        this.b = bookFile;
    }

    private T_Clazz(ScanTxtFileActivity scanTxtFileActivity, File file) {
        this(scanTxtFileActivity, new BookFile(file));
        this.c = file.lastModified();
    }

    /* synthetic */ T_Clazz(ScanTxtFileActivity scanTxtFileActivity, File file, byte by) {
        this(scanTxtFileActivity, file);
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

    /*
     * Enabled aggressive block sorting
     */
    public final void c() {
        boolean bl = !this.a;
        this.a = bl;
    }

    public final long d() {
        return this.c;
    }
}
