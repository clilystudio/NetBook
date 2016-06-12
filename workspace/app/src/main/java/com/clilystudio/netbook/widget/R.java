package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;

import java.io.File;

final class R implements View$OnClickListener {

    private GiftGameGameButton a;

    R(GiftGameGameButton GiftGameGameButton1, byte byte2) {
        this(GiftGameGameButton1);
    }

    private R(GiftGameGameButton GiftGameGameButton1) {
        a = GiftGameGameButton1;
    }

    public final void onClick(View View1) {
        GiftGameGameButton.a(a);
        com.clilystudio.netbook.hpay100.a.a.a(a.getContext(), new File(Uri.parse(GiftGameGameButton.b(a).getLocalFileUri()).getPath()));
    }
}
