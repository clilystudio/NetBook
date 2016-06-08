package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostDetail;

final class cw extends e<String, Void, PostDetail> {
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

