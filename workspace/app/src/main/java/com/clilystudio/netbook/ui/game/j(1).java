package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.widget.TextView;

final class j
        implements View.OnClickListener {
    j(GameDetailActivity paramGameDetailActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        GameDetailActivity.i(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("加载中...");
        GameDetailActivity.g(this.b);
    }
}

