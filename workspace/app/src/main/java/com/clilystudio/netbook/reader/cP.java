package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.RelateBookRoot;

import java.io.IOException;

public final class cP extends e<String, Void, RelateBookRoot> {
    public cP(cM paramcM) {
    }

    private static RelateBookRoot a(String[] paramArrayOfString) {
        try {
            b.a();
            RelateBookRoot localRelateBookRoot = b.b().V(paramArrayOfString[0]);
            return localRelateBookRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

