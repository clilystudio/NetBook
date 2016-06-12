package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils$TruncateAt;

final class p implements Runnable {

    private UGCDetailActivity a;

    p(UGCDetailActivity UGCDetailActivity1) {
        a = UGCDetailActivity1;
    }

    public final void run() {
        if (UGCDetailActivity.d(a).getLineCount() > 5) {
            UGCDetailActivity.e(a).setVisibility(0);
            UGCDetailActivity.d(a).setEllipsize(TextUtils$TruncateAt.END);
            UGCDetailActivity.d(a).setClickable(true);
            UGCDetailActivity.d(a).setOnClickListener(UGCDetailActivity.l(a));
        }
    }
}
