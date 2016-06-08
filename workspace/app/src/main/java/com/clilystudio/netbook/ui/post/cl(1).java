package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetsResult;

final class cl extends e<String, Void, TweetsResult> {
    private cl(OtherUserActivity paramOtherUserActivity) {
    }

    private static TweetsResult a(String[] paramArrayOfString) {
        try {
            b.a();
            TweetsResult localTweetsResult = b.b().o(paramArrayOfString[0], paramArrayOfString[1]);
            return localTweetsResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

