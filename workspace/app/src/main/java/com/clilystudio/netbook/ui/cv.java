package com.clilystudio.netbook.ui;

import com.koushikdutta.async.callback.CompletedCallback;

final class cv implements CompletedCallback {
    private /* synthetic */ l a;

    cv(cs cs2, l l2) {
        this.a = l2;
    }

    @Override
    public final void onCompleted(Exception exception) {
        this.a.a("upload success");
    }
}
