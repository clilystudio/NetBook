package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.model.ChapterKeysRoot;

final class D extends c<Void, ChapterKeysRoot> {
    private String a;
    private String b;

    public D(o paramo, Activity paramActivity, String paramString1, String paramString2) {
        super(paramActivity, paramString1);
        this.b = paramString2;
    }

    private ChapterKeysRoot a() {
        try {
            if ((o.a(this.c) instanceof ReaderActivity)) {
                this.a = ((ReaderActivity) o.a(this.c)).l();
                b.a();
                ChapterKeysRoot localChapterKeysRoot = b.b().g(am.e().getToken(), this.a);
                return localChapterKeysRoot;
            }
            return null;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

