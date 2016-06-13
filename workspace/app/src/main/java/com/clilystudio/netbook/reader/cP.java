package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.RelateBookRoot;

import java.io.IOException;

public final class cP
        extends e<String, Void, RelateBookRoot> {
    private /* synthetic */ cM a;

    public cP(cM cM2) {
        this.a = cM2;
    }

    private static /* varargs */ RelateBookRoot a(String... arrstring) {
        try {
            b.a();
            RelateBookRoot relateBookRoot = b.b().V(arrstring[0]);
            return relateBookRoot;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return cP.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        RelateBookRoot relateBookRoot = (RelateBookRoot) object;
        cM.b(this.a).a(relateBookRoot, cM.a(this.a));
    }
}
