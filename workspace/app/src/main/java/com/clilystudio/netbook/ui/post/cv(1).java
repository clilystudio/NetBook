package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostDetailComment;

final class cv extends e<String, Void, PostDetailComment> {
    private cv(PostDetailActivity paramPostDetailActivity) {
    }

    private PostDetailComment a(String[] paramArrayOfString) {
        try {
            PostDetailComment localPostDetailComment = b.b().e(paramArrayOfString[0], PostDetailActivity.c(this.a).getCount(), 30);
            return localPostDetailComment;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}
