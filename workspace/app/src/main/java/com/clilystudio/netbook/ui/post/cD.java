package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostDetailComment;

final class cD extends e<String, Void, PostDetailComment> {
    private cD(ReviewActivity paramReviewActivity) {
    }

    private PostDetailComment a(String[] paramArrayOfString) {
        try {
            PostDetailComment localPostDetailComment = b.b().f(paramArrayOfString[0], ReviewActivity.f(this.a).getCount(), 30);
            return localPostDetailComment;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}
