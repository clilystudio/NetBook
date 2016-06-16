package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.widget.TextView;

final class j implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ GameDetailActivity b;

    j(GameDetailActivity gameDetailActivity, TextView textView) {
        this.b = gameDetailActivity;
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        GameDetailActivity.i(this.b).findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
        this.a.setText("\u52a0\u8f7d\u4e2d...");
        GameDetailActivity.g(this.b);
    }
}
