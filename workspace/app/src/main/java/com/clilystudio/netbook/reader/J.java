package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PurchaseChapterResult;

final class J extends e<String, Void, PurchaseChapterResult> {
    private ReaderChapter a;

    public J(o paramo, ReaderChapter paramReaderChapter) {
        this.a = paramReaderChapter;
    }

    private static PurchaseChapterResult a(String[] paramArrayOfString) {
        try {
            b.a();
            PurchaseChapterResult localPurchaseChapterResult = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 1);
            return localPurchaseChapterResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    protected final void onCancelled() {
        super.onCancelled();
    }
}
