package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

final class h extends c<String, ResultStatus> {
    public h(AbsPostActivity paramAbsPostActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034430);
    }

    private ResultStatus a(String[] paramArrayOfString) {
        try {
            ResultStatus localResultStatus = b.b().j(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localResultStatus;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.h
 * JD-Core Version:    0.6.2
 */