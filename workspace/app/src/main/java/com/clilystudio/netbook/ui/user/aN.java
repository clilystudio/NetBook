package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class aN
        extends com.clilystudio.netbook.a.e<String, Void, ResultStatus> {
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

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
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
