package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostDetailComment;

final class cF extends e<String, Void, PostDetailComment> {
    private cF(ReviewActivity paramReviewActivity) {
    }

    private PostDetailComment a(String[] paramArrayOfString) {
        try {
            if (paramArrayOfString.length > 1)
                return b.b().l(paramArrayOfString[0], paramArrayOfString[1]);
            PostDetailComment localPostDetailComment = b.b().l(paramArrayOfString[0], null);
            return localPostDetailComment;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

