package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.widget.av;

final class cz
        implements av {
    cz(ReviewActivity paramReviewActivity) {
    }

    public final void a() {
        if ((ReviewActivity.i(this.a) == null) || (ReviewActivity.i(this.a).getStatus() == AsyncTask.Status.FINISHED))
            ReviewActivity.b(this.a);
    }
}

