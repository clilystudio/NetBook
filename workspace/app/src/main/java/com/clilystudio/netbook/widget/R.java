package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;

import java.io.File;

final class R
        implements View.OnClickListener {
    private /* synthetic */ GiftGameGameButton a;

    private R(GiftGameGameButton giftGameGameButton) {
        this.a = giftGameGameButton;
    }

    /* synthetic */ R(GiftGameGameButton giftGameGameButton, byte by) {
        this(giftGameGameButton);
    }

    @Override
    public final void onClick(View view) {
        GiftGameGameButton.a(this.a);
        a.a(this.a.getContext(), new File(Uri.parse(GiftGameGameButton.b(this.a).getLocalFileUri()).getPath()));
    }
}
