package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;

import com.clilystudio.netbook.hpay100.a_Pack.a;

import java.io.File;

final class R_Clz
        implements View.OnClickListener {
    private R_Clz(GiftGameGameButton paramGiftGameGameButton) {
    }

    public final void onClick(View paramView) {
        GiftGameGameButton.a(this.a);
        a.a(this.a.getContext(), new File(Uri.parse(GiftGameGameButton.b(this.a).getLocalFileUri()).getPath()));
    }
}

