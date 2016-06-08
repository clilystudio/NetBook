package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class P extends e<String, Void, ResultStatus> {
    private P(N paramN) {
    }

    private static ResultStatus a(String[] paramArrayOfString) {
        try {
            b.a();
            ResultStatus localResultStatus = b.b().y(paramArrayOfString[0], paramArrayOfString[1]);
            return localResultStatus;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

