package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostDetailComment;

final class ad extends e_BaseAsyncTask<String, Void, PostDetailComment> {
    private ad(BookHelpActivity paramBookHelpActivity) {
    }

    private PostDetailComment a(String[] paramArrayOfString) {
        try {
            PostDetailComment localPostDetailComment = b.b().f(paramArrayOfString[0], BookHelpActivity.c_initContentView(this.a).getCount(), 30);
            return localPostDetailComment;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ad
 * JD-Core Version:    0.6.2
 */