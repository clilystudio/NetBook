package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class z implements View$OnClickListener {

    private AudiobookInfoActivity a;

    z(AudiobookInfoActivity AudiobookInfoActivity1) {
        a = AudiobookInfoActivity1;
    }

    public final void onClick(View View1) {
        AudiobookInfoActivity.a(a, 0);
        AudiobookInfoActivity.a(a);
    }
}
