package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.model.GamePostRoot$GamePost;

final class p implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ GamePostRoot$GamePost b;
    private /* synthetic */ String c;
    private /* synthetic */ n d;

    p(n n2, TextView textView, GamePostRoot$GamePost gamePost, String string) {
        this.d = n2;
        this.a = textView;
        this.b = gamePost;
        this.c = string;
    }

    @Override
    public final void onClick(View view) {
        GameDetailActivity.a(this.d.a, view, this.a, this.b.getLikeCount(), this.c);
    }
}
