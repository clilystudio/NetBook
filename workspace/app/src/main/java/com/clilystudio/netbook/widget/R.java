package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;

import com.arcsoft.hpay100.a.a;

import java.io.File;

final class R
        implements View.OnClickListener {
    private R(GiftGameGameButton paramGiftGameGameButton) {
    }

    public final void onClick(View paramView) {
        GiftGameGameButton.a(this.a);
        a.a(this.a.getContext(), new File(Uri.parse(GiftGameGameButton.b(this.a).getLocalFileUri()).getPath()));
    }
}

