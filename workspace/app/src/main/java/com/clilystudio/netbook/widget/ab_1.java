package com.clilystudio.netbook.widget;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotCommentRoot;
import com.clilystudio.netbook.model.PostComment;

final class ab
        extends e<String, Void, HotCommentRoot> {
    private /* synthetic */ HotCommentView a;

    private ab(HotCommentView hotCommentView) {
        this.a = hotCommentView;
    }

    /* synthetic */ ab(HotCommentView hotCommentView, byte by) {
        this(hotCommentView);
    }

    private static /* varargs */ HotCommentRoot a(String... arrstring) {
        try {
            b.a();
            HotCommentRoot hotCommentRoot = b.b().T(arrstring[0]);
            return hotCommentRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return ab.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        HotCommentRoot hotCommentRoot = (HotCommentRoot) object;
        super.onPostExecute(hotCommentRoot);
        if (hotCommentRoot != null && hotCommentRoot.getComments() != null && hotCommentRoot.getComments().length > 0) {
            this.a.findViewById(2131493517).setVisibility(0);
            this.a.findViewById(2131493518).setVisibility(0);
            LayoutInflater layoutInflater = LayoutInflater.from(this.a.getContext());
            PostComment[] arrpostComment = hotCommentRoot.getComments();
            int n = 2;
            for (int i = 0; i < arrpostComment.length; ++i) {
                PostComment postComment = arrpostComment[i];
                View view = layoutInflater.inflate(2130903312, (ViewGroup) this.a, false);
                ((CommentItemView) view.findViewById(2131493758)).b(postComment, -1);
                this.a.addView(view, n);
                ++n;
            }
        }
    }
}
