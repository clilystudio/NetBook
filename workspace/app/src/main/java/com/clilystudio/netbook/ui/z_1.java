package com.clilystudio.netbook.ui;

import android.view.View;

final class z implements View.OnClickListener {
    private /* synthetic */ AudiobookInfoActivity a;

    z(AudiobookInfoActivity audiobookInfoActivity) {
        this.a = audiobookInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        AudiobookInfoActivity.a(this.a, 0);
        AudiobookInfoActivity.a(this.a);
    }
}
