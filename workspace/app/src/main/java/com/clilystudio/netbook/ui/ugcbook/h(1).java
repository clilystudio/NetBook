package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;

final class h extends e<String, Void, ResultStatus> {
    private h(FavUGCListFragment paramFavUGCListFragment) {
    }

    private static ResultStatus a(String[] paramArrayOfString) {
        try {
            b.a();
            ResultStatus localResultStatus = b.b().E(paramArrayOfString[0], paramArrayOfString[1]);
            return localResultStatus;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

