package com.clilystudio.netbook.reader.dl;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSourceRoot;

final class f extends e<String, Void, TocSourceRoot> {
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

