package com.clilystudio.app.netbook.ui;

import android.view.View;

final class h
        implements View.OnClickListener {
    h(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void onClick(View paramView) {
        this.a.startActivity(AudiobookInfoActivity.a(this.a, AudioBookPlayActivity.d_setTitle(this.a)));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.h
 * JD-Core Version:    0.6.2
 */