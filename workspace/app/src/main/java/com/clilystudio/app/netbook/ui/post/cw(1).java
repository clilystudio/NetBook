package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostDetail;

final class cw extends e_BaseAsyncTask<String, Void, PostDetail> {
    private cw(PostDetailActivity paramPostDetailActivity) {
    }

    private PostDetail a(String[] paramArrayOfString) {
        try {
            PostDetail localPostDetail = b.b().H(paramArrayOfString[0]);
            return localPostDetail;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cw
 * JD-Core Version:    0.6.2
 */