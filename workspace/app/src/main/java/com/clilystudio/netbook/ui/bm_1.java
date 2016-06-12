package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.model.MhdListRoot;

import java.io.IOException;

final class bm extends com.clilystudio.netbook.a.e {

    private MhdListActivity a;

    bm(MhdListActivity MhdListActivity1, byte byte2) {
        this(MhdListActivity1);
    }

    private bm(MhdListActivity MhdListActivity1) {
        a = MhdListActivity1;
    }

    private transient MhdListRoot a() {
        MhdListRoot MhdListRoot2;

        try {
            MhdListRoot2 = com.clilystudio.netbook.api.b.b().g();
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return null;
        }
        return MhdListRoot2;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (MhdListRoot) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((MhdListRoot) Object2).getInfo() != null && ((MhdListRoot) Object2).getInfo().length > 0) {
            MhdListActivity.a(a, 1);
            MhdListActivity.b(a).a(((MhdListRoot) Object2).getInfo());
        } else {
            MhdListActivity.a(a, 2);
            com.clilystudio.netbook.util.e.a((Activity) a, 2131034408);
        }
    }
}
