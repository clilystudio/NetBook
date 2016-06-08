package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.widget.av;

final class cr
        implements av {
    cr(PostDetailActivity paramPostDetailActivity) {
    }

    public final void a() {
        if ((PostDetailActivity.j(this.a) == null) || (PostDetailActivity.j(this.a).getStatus() == AsyncTask.Status.FINISHED))
            PostDetailActivity.b(this.a);
    }
}

