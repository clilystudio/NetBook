package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class aN extends com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus> {
    private /* synthetic */ UserTaskActivity a;

    private aN(UserTaskActivity userTaskActivity) {
        this.a = userTaskActivity;
    }

    /* synthetic */ aN(UserTaskActivity userTaskActivity, byte by) {
        this(userTaskActivity);
    }

    private /* varargs */ ResultStatus a() {
        try {
            ResultStatus resultStatus = b.b().W(am.e().getToken());
            return resultStatus;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus != null && !resultStatus.isOk()) {
            UserTaskActivity.a(this.a, true);
            e.a((Activity) this.a, (String) "\u4f60\u5df2\u7ecf\u5b8c\u6210\u8fd9\u4e2a\u4efb\u52a1");
        }
    }
}
