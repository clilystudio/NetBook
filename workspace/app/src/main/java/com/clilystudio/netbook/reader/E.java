package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChapterSingleKey;

import java.io.IOException;

final class E extends c<String, ChapterSingleKey> {
    public E(o paramo, Activity paramActivity, int paramInt, boolean paramBoolean) {
        super(paramActivity, 2131034218, paramBoolean);
    }

    private static ChapterSingleKey a(String[] paramArrayOfString) {
        try {
            b.a();
            ChapterSingleKey localChapterSingleKey = b.b().f(paramArrayOfString[0], am.e().getToken());
            return localChapterSingleKey;
        } catch (IOException localIOException) {
        }
        return null;
    }
}

