package com.clilystudio.app.netbook.ui.game;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.GamePostRoot.GamePost;

final class p
        implements View.OnClickListener {
    p(n paramn, TextView paramTextView, GamePostRoot.GamePost paramGamePost, String paramString) {
    }

    public final void onClick(View paramView) {
        GameDetailActivity.a(this.d.a, paramView, this.a, this.b.getLikeCount(), this.c);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.p
 * JD-Core Version:    0.6.2
 */