package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

final class g extends c<String, ResultStatus> {
    public g(AbsPostActivity paramAbsPostActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034430);
    }

    private ResultStatus a(String[] paramArrayOfString) {
        try {
            ResultStatus localResultStatus = b.b().f(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3]);
            return localResultStatus;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

