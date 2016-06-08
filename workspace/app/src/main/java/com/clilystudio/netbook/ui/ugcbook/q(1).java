package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

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

