package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class aN extends e<String, Void, ResultStatus> {
    private aN(UserTaskActivity paramUserTaskActivity) {
    }

    private ResultStatus a() {
        try {
            ResultStatus localResultStatus = b.b().W(am.e().getToken());
            return localResultStatus;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}
