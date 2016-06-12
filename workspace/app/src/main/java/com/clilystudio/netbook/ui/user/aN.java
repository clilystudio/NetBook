package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class aN extends com.clilystudio.netbook.a.e {

    private UserTaskActivity a;

    aN(UserTaskActivity UserTaskActivity1, byte byte2) {
        this(UserTaskActivity1);
    }

    private aN(UserTaskActivity UserTaskActivity1) {
        a = UserTaskActivity1;
    }

    private transient ResultStatus a() {
        ResultStatus ResultStatus2;

        try {
            ResultStatus2 = com.clilystudio.netbook.api.b.b().W(am.e().getToken());
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return null;
        }
        return ResultStatus2;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && !((ResultStatus) Object2).isOk()) {
            UserTaskActivity.a(a, true);
            com.clilystudio.netbook.util.e.a((Activity) a, "\u4F60\u5DF2\u7ECF\u5B8C\u6210\u8FD9\u4E2A\u4EFB\u52A1");
        }
    }
}
