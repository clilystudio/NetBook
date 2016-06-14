package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class cr implements av {
    private /* synthetic */ PostDetailActivity a;

    cr(PostDetailActivity postDetailActivity) {
        this.a = postDetailActivity;
    }

    @Override
    public final void a() {
        if (PostDetailActivity.j(this.a) == null || PostDetailActivity.j(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            PostDetailActivity.b(this.a);
        }
    }
}
