package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChapterKeysRoot;

final class bp extends e<Void, Void, ChapterKeysRoot> {
    private bp(ReaderActivity paramReaderActivity) {
    }

    private ChapterKeysRoot a() {
        try {
            b.a();
            ChapterKeysRoot localChapterKeysRoot = b.b().g(am.e().getToken(), ReaderActivity.M(this.a));
            return localChapterKeysRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

