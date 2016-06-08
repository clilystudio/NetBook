package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetsResult;

final class cm extends e<String, Void, TweetsResult> {
    private cm(OtherUserActivity paramOtherUserActivity) {
    }

    private static TweetsResult a(String[] paramArrayOfString) {
        try {
            b.a();
            TweetsResult localTweetsResult = b.b().o(paramArrayOfString[0], null);
            return localTweetsResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

