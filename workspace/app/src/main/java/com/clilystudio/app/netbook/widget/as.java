package com.clilystudio.app.netbook.widget;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

final class as extends e<String, Void, ResultStatus> {
    private as(PostUsefulView paramPostUsefulView) {
    }

    private static ResultStatus a(String[] paramArrayOfString) {
        try {
            b.a();
            ResultStatus localResultStatus = b.b().m(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localResultStatus;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.as
 * JD-Core Version:    0.6.2
 */