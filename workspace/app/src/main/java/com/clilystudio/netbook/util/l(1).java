package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

final class l extends e<String, Void, ResultStatus> {
    private l(k paramk) {
    }

    private static ResultStatus a(String[] paramArrayOfString) {
        try {
            b.a();
            ResultStatus localResultStatus = b.b().n(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localResultStatus;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}
