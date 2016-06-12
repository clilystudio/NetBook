package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.ResultStatus;

final class l extends e {

    private k a;

    l(k k1, byte byte2) {
        this(k1);
    }

    private l(k k1) {
        a = k1;
    }

    private static transient ResultStatus a(String[] String_1darray1) {
        ResultStatus ResultStatus4;

        try {
            com.clilystudio.netbook.api.b.a();
            ResultStatus4 = com.clilystudio.netbook.api.b.b().n(String_1darray1[0], String_1darray1[1], String_1darray1[2]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return ResultStatus4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((ResultStatus) Object2).isOk())
            k.a(a, true);
        else
            k.a(a, false);
    }
}
