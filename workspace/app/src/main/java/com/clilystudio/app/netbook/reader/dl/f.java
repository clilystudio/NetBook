package com.clilystudio.app.netbook.reader.dl;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TocSourceRoot;

final class f extends e_BaseAsyncTask<String, Void, TocSourceRoot> {
    private f(BookDownloadService paramBookDownloadService) {
    }

    private static TocSourceRoot a(String[] paramArrayOfString) {
        try {
            b.a();
            TocSourceRoot localTocSourceRoot = b.b().g(paramArrayOfString[0]);
            return localTocSourceRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.dl.f
 * JD-Core Version:    0.6.2
 */