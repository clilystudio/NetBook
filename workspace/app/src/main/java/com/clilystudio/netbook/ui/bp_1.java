package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.SecretAppItemRoot;

import java.io.IOException;
import java.util.Arrays;

final class bp extends e {

    private MysteryActivity a;

    bp(MysteryActivity MysteryActivity1, byte byte2) {
        this(MysteryActivity1);
    }

    private bp(MysteryActivity MysteryActivity1) {
        a = MysteryActivity1;
    }

    private transient SecretAppItemRoot a() {
        SecretAppItemRoot SecretAppItemRoot3;

        MysteryActivity.a(a, true);
        try {
            SecretAppItemRoot3 = com.clilystudio.netbook.api.b.b().n();
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return SecretAppItemRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (SecretAppItemRoot) Object1;

        super.onPostExecute(Object2);
        MysteryActivity.b(a, true);
        MysteryActivity.a(a, false);
        if (Object2 != null && ((SecretAppItemRoot) Object2).getApps() != null) {
            MysteryActivity.a(a, Arrays.asList(((SecretAppItemRoot) Object2).getApps()));
            MysteryActivity.a(a);
        } else
            a.h();
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        a.i();
    }
}
