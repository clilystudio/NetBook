package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostDetailComment;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class ad
        extends com.clilystudio.netbook.a.e<String, Void, PostDetailComment> {
    private /* synthetic */ BookHelpActivity a;

    private ad(BookHelpActivity bookHelpActivity) {
        this.a = bookHelpActivity;
    }

    /* synthetic */ ad(BookHelpActivity bookHelpActivity, byte by) {
        this(bookHelpActivity);
    }

    private /* varargs */ PostDetailComment a(String... arrstring) {
        try {
            PostDetailComment postDetailComment = b.b().f(arrstring[0], BookHelpActivity.c(this.a).getCount(), 30);
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
        if (postDetailComment != null && postDetailComment.isOk()) {
            this.a.b.setOnLastItemListener(BookHelpActivity.d(this.a));
            BookHelpActivity.e(this.a).setVisibility(8);
            List<PostComment> list = Arrays.asList(postDetailComment.getComments());
            BookHelpActivity.f(this.a).addAll(list);
            BookHelpActivity.c(this.a).a(BookHelpActivity.f(this.a));
            if (list.size() < 30) {
                this.a.b.removeFooterView(BookHelpActivity.e(this.a));
                this.a.b.setOnLastItemListener(null);
            }
            return;
        }
        this.a.b.setOnLastItemListener(null);
        BookHelpActivity.g(this.a);
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
