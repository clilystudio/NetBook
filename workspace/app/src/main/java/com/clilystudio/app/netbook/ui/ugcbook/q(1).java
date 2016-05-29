package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

import java.io.IOException;

final class q extends e<String, Void, ResultStatus> {
    private q(UGCDetailActivity paramUGCDetailActivity) {
    }

    private ResultStatus a(String[] paramArrayOfString) {
        try {
            ResultStatus localResultStatus = b.b().D(paramArrayOfString[0], paramArrayOfString[1]);
            return localResultStatus;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.q
 * JD-Core Version:    0.6.2
 */