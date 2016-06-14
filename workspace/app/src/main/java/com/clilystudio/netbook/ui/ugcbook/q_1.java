package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class q extends com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus> {
    private /* synthetic */ UGCDetailActivity a;

    private q(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    /* synthetic */ q(UGCDetailActivity uGCDetailActivity, byte by) {
        this(uGCDetailActivity);
    }

    private /* varargs */ ResultStatus a(String... arrstring) {
        try {
            ResultStatus resultStatus = b.b().D(arrstring[0], arrstring[1]);
            return resultStatus;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus != null && resultStatus.isOk()) {
            e.a((Activity) this.a, "\u5df2\u6536\u85cf");
            return;
        }
        e.a((Activity) this.a, "\u6536\u85cf\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
