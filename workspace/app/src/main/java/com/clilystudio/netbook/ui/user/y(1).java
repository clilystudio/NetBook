package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class y extends c<String, ResultStatus> {
    public y(MyFavTopicFragment paramMyFavTopicFragment, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034218);
    }

    private static ResultStatus a(String[] paramArrayOfString) {
        try {
            b.a();
            ResultStatus localResultStatus = b.b().z(paramArrayOfString[0], paramArrayOfString[1]);
            return localResultStatus;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

