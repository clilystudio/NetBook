package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class P
        extends com.clilystudio.netbook.a.e<String, Void, ResultStatus> {
    private /* synthetic */ N a;

    private P(N n) {
        this.a = n;
    }

    /* synthetic */ P(N n, byte by) {
        this(n);
    }

    private static /* varargs */ ResultStatus a(String... arrstring) {
        try {
            b.a();
            ResultStatus resultStatus = b.b().y(arrstring[0], arrstring[1]);
            return resultStatus;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return P.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus == null) {
            e.a((Activity) N.a(this.a), (String) "\u6536\u85cf\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
            return;
        }
        if (resultStatus.isOk()) {
            e.a((Activity) N.a(this.a), (String) "\u6536\u85cf\u6210\u529f");
            return;
        } else {
            if (!"11000".equals(resultStatus.getCode())) return;
            {
                e.a((Activity) N.a(this.a), (String) "\u4f60\u5df2\u7ecf\u6536\u85cf\u8fc7\u5566\uff5e");
                return;
            }
        }
    }
}
