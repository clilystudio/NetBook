package com.clilystudio.netbook.ui;

import android.view.View;

final class h
        implements View.OnClickListener {
    private /* synthetic */ AudioBookPlayActivity a;

    h(AudioBookPlayActivity audioBookPlayActivity) {
        this.a = audioBookPlayActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.startActivity(AudiobookInfoActivity.a(this.a, AudioBookPlayActivity.d(this.a)));
    }
}
