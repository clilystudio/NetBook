package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TweetsResult;

final class cm extends e_BaseAsyncTask<String, Void, TweetsResult> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cm
 * JD-Core Version:    0.6.2
 */