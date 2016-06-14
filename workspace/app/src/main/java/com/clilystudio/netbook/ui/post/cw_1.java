package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostDetail;

final class cw
        extends e<String, Void, PostDetail> {
    private /* synthetic */ PostDetailActivity a;

    private cw(PostDetailActivity postDetailActivity) {
        this.a = postDetailActivity;
    }

    /* synthetic */ cw(PostDetailActivity postDetailActivity, byte by) {
        this(postDetailActivity);
    }

    private /* varargs */ PostDetail a(String... arrstring) {
        try {
            PostDetail postDetail = b.b().H(arrstring[0]);
            return postDetail;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        PostDetail postDetail = (PostDetail) object;
        super.onPostExecute(postDetail);
        if (postDetail != null && postDetail.getPost() != null) {
            PostDetailActivity.a(this.a, postDetail.getPost());
            this.a.f();
            PostDetailActivity.b(this.a, PostDetailActivity.a(this.a));
            PostDetailActivity.a(this.a, PostDetailActivity.a(this.a).getVotes());
            PostDetailActivity.b(this.a);
            return;
        }
        this.a.h();
    }
}
