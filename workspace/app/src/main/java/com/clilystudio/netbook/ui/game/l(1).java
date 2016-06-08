package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.widget.av;

final class l
        implements av {
    l(GameDetailActivity paramGameDetailActivity) {
    }

    public final void a() {
        if ((GameDetailActivity.n(this.a) == null) || (GameDetailActivity.n(this.a).getStatus() == AsyncTask.Status.FINISHED))
            GameDetailActivity.g(this.a);
    }
}

