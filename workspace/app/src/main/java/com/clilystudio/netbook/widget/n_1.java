package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class n
        extends com.clilystudio.netbook.a.e<String, Void, ResultStatus> {
    private /* synthetic */ CommentItemView a;

    private n(CommentItemView commentItemView) {
        this.a = commentItemView;
    }

    /* synthetic */ n(CommentItemView commentItemView, byte by) {
        this(commentItemView);
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        String[] arrstring = (String[]) arrobject;
        return b.b().o(CommentItemView.a(this.a).n(), arrstring[0], arrstring[1]);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus != null && !resultStatus.isOk()) {
            e.a((Activity) CommentItemView.a(this.a), "\u5df2\u540c\u611f");
        }
    }

    @Override
    protected final void onPreExecute() {
        super.onPreExecute();
        if (CommentItemView.b(this.a) != null) {
            CommentItemView.b(this.a).setLikedInView(true);
        }
        CommentItemView.c(this.a);
    }
}
