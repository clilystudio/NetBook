package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

final class co extends e_BaseAsyncTask<String, Void, ResultStatus> {
    private String a;

    private co(OtherUserActivity paramOtherUserActivity) {
    }

    private ResultStatus a(String[] paramArrayOfString) {
        try {
            this.a = paramArrayOfString[1];
            b.a();
            ResultStatus localResultStatus = b.b().i(paramArrayOfString[0], this.a);
            return localResultStatus;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.co
 * JD-Core Version:    0.6.2
 */