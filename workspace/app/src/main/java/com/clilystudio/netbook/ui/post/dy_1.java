package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.widget.TextView;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostDetailComment;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class dy extends com.clilystudio.netbook.a_pack.e<String, Void, PostDetailComment> {
    private /* synthetic */ TweetDetailActivity a;

    private dy(TweetDetailActivity tweetDetailActivity) {
        this.a = tweetDetailActivity;
    }

    /* synthetic */ dy(TweetDetailActivity tweetDetailActivity, byte by) {
        this(tweetDetailActivity);
    }

    private /* varargs */ PostDetailComment a(String... arrstring) {
        try {
            if (arrstring.length > 1) {
                return b.b().l(arrstring[0], arrstring[1]);
            }
            PostDetailComment postDetailComment = b.b().l(arrstring[0], null);
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
        this.a.b.setOnLastItemListener(TweetDetailActivity.i(this.a));
        if (postDetailComment != null && postDetailComment.isOk()) {
            TweetDetailActivity.j(this.a).setVisibility(View.GONE);
            List<PostComment> list = Arrays.asList(postDetailComment.getComments());
            TweetDetailActivity.k(this.a).addAll(list);
            TweetDetailActivity.l(this.a).a(TweetDetailActivity.k(this.a));
            if (list.size() < 30) {
                this.a.b.removeFooterView(TweetDetailActivity.j(this.a));
                this.a.b.setOnLastItemListener(null);
            }
            ((TextView) this.a.findViewById(R.id.comment_count)).setText("\u5171" + TweetDetailActivity.c(this.a).getTweet().getCommented() + "\u6761\u8bc4\u8bba");
            return;
        }
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
