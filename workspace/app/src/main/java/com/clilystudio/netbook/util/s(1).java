package com.clilystudio.netbook.util;

import android.content.Context;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.BookTopRoot;

import java.io.IOException;

public final class s extends e<Void, Void, BookTopRoot> {
    private Context a;

    public s(Context paramContext) {
        this.a = paramContext;
    }

    private BookTopRoot a() {
        try {
            BookTopRoot localBookTopRoot = c().u();
            return localBookTopRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

