package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask$Status;

import com.clilystudio.netbook.widget.av;

final class cr implements av {

    private PostDetailActivity a;

    cr(PostDetailActivity PostDetailActivity1) {
        a = PostDetailActivity1;
    }

    public final void a() {
        if (PostDetailActivity.j(a) == null || PostDetailActivity.j(a).getStatus() == AsyncTask$Status.FINISHED)
            PostDetailActivity.b(a);
    }
}
