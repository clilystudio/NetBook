package com.clilystudio.netbook.reader;

import android.support.design.widget.am;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterKeysRoot$ChapterKey;

import java.util.HashMap;

final class bp
        extends e<Void, Void, ChapterKeysRoot> {
    private /* synthetic */ ReaderActivity a;

    private bp(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /* synthetic */ bp(ReaderActivity readerActivity, byte by) {
        this(readerActivity);
    }

    private /* varargs */ ChapterKeysRoot a() {
        try {
            b.a();
            ChapterKeysRoot chapterKeysRoot = b.b().g(am.e().getToken(), ReaderActivity.M(this.a));
            return chapterKeysRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        HashMap hashMap;
        ChapterKeysRoot chapterKeysRoot = (ChapterKeysRoot) object;
        if (chapterKeysRoot != null && chapterKeysRoot.isOk()) {
            hashMap = new HashMap((int) ((double) chapterKeysRoot.getKeyLength() / 0.7));
            for (ChapterKeysRoot$ChapterKey chapterKeysRoot$ChapterKey : chapterKeysRoot.getKeys()) {
                hashMap.put(chapterKeysRoot$ChapterKey.get_id(), chapterKeysRoot$ChapterKey.getKey());
            }
            a.a(ReaderActivity.M(this.a), hashMap);
        } else {
            hashMap = a.M(ReaderActivity.M(this.a));
            if (hashMap == null) {
                hashMap = new HashMap();
            }
        }
        ReaderActivity.Y(this.a).a(hashMap);
    }
}
