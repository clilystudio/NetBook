package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostDetailComment;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class cv extends com.clilystudio.netbook.a_pack.e<String, Void, PostDetailComment> {
    private /* synthetic */ PostDetailActivity a;

    private cv(PostDetailActivity postDetailActivity) {
        this.a = postDetailActivity;
    }

    /* synthetic */ cv(PostDetailActivity postDetailActivity, byte by) {
        this(postDetailActivity);
    }

    private /* varargs */ PostDetailComment a(String... arrstring) {
        try {
            PostDetailComment postDetailComment = b.b().e(arrstring[0], PostDetailActivity.c(this.a).getCount(), 30);
            return postDetailComment;
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
        PostDetailComment postDetailComment = (PostDetailComment) object;
        super.onPostExecute(postDetailComment);
        this.a.b.setOnLastItemListener(PostDetailActivity.d(this.a));
        if (postDetailComment != null && postDetailComment.isOk()) {
            PostDetailActivity.e(this.a).setVisibility(View.GONE);
            List<PostComment> list = Arrays.asList(postDetailComment.getComments());
            PostDetailActivity.f(this.a).addAll(list);
            PostDetailActivity.c(this.a).a(PostDetailActivity.f(this.a));
            if (list.size() < 30) {
                this.a.b.removeFooterView(PostDetailActivity.e(this.a));
                this.a.b.setOnLastItemListener(null);
            }
            return;
        }
        PostDetailActivity.g(this.a);
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
