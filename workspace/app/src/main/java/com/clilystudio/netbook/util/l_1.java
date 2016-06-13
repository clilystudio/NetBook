package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

final class l
        extends e<String, Void, ResultStatus> {
    private /* synthetic */ k a;

    private l(k k2) {
        this.a = k2;
    }

    /* synthetic */ l(k k2, byte by) {
        this(k2);
    }

    private static /* varargs */ ResultStatus a(String... arrstring) {
        try {
            b.a();
            ResultStatus resultStatus = b.b().n(arrstring[0], arrstring[1], arrstring[2]);
            return resultStatus;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return l.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus != null && resultStatus.isOk()) {
            k.a(this.a, true);
            return;
        }
        k.a(this.a, false);
    }
}
