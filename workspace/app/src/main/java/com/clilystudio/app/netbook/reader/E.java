package com.clilystudio.app.netbook.reader;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ChapterSingleKey;

import java.io.IOException;

final class E extends c<String, ChapterSingleKey> {
    public E(o paramo, Activity paramActivity, int paramInt, boolean paramBoolean) {
        super(paramActivity, 2131034218, paramBoolean);
    }

    private static ChapterSingleKey a(String[] paramArrayOfString) {
        try {
            b.a();
            ChapterSingleKey localChapterSingleKey = b.b().f(paramArrayOfString[0], am_CommonUtils.e().getToken());
            return localChapterSingleKey;
        } catch (IOException localIOException) {
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.E
 * JD-Core Version:    0.6.2
 */