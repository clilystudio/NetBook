package com.clilystudio.netbook.ui;

import android.view.View;

final class h
        implements View.OnClickListener {
    h(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void onClick(View paramView) {
        this.a.startActivity(AudiobookInfoActivity.a(this.a, AudioBookPlayActivity.d(this.a)));
    }
}

