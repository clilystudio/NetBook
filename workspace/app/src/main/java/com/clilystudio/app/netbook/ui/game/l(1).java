package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.widget.av;

final class l
        implements av {
    l(GameDetailActivity paramGameDetailActivity) {
    }

    public final void a() {
        if ((GameDetailActivity.n(this.a) == null) || (GameDetailActivity.n(this.a).getStatus() == AsyncTask.Status.FINISHED))
            GameDetailActivity.g(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.l
 * JD-Core Version:    0.6.2
 */