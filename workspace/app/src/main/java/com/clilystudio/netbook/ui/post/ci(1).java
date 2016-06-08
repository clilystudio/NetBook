package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.FollowResult;

final class ci extends e<String, Void, FollowResult> {
    private ci(OtherUserActivity paramOtherUserActivity) {
    }

    private static FollowResult a(String[] paramArrayOfString) {
        try {
            b.a();
            FollowResult localFollowResult = b.b().n(paramArrayOfString[0], paramArrayOfString[1]);
            return localFollowResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

