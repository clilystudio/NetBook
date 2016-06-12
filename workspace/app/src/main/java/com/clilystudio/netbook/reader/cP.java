package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.RelateBookRoot;

import java.io.IOException;

public final class cP extends e {

    private cM a;

    public cP(cM cM1) {
        a = cM1;
    }

    private static transient RelateBookRoot a(String[] String_1darray1) {
        RelateBookRoot RelateBookRoot4;

        try {
            com.clilystudio.netbook.api.b.a();
            RelateBookRoot4 = com.clilystudio.netbook.api.b.b().V(String_1darray1[0]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return RelateBookRoot4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        RelateBookRoot RelateBookRoot2 = (RelateBookRoot) Object1;

        cM.b(a).a(RelateBookRoot2, cM.a(a));
    }
}
