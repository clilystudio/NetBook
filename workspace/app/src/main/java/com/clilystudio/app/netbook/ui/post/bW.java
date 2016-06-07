package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TweetsResult;

final class bW extends e_BaseAsyncTask<String, Void, TweetsResult> {
    private bW(MyTweetFragment paramMyTweetFragment) {
    }

    private static TweetsResult a(String[] paramArrayOfString) {
        try {
            b.a();
            TweetsResult localTweetsResult = b.b().k(paramArrayOfString[0]);
            return localTweetsResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bW
 * JD-Core Version:    0.6.2
 */