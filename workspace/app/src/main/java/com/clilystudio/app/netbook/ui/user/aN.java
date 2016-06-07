package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

import java.io.IOException;

final class aN extends e_BaseAsyncTask<String, Void, ResultStatus> {
    private aN(UserTaskActivity paramUserTaskActivity) {
    }

    private ResultStatus a() {
        try {
            ResultStatus localResultStatus = b.b().W(am_CommonUtils.e().getToken());
            return localResultStatus;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aN
 * JD-Core Version:    0.6.2
 */