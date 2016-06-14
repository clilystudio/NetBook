package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils;

final class p implements Runnable {
    private /* synthetic */ UGCDetailActivity a;

    p(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    @Override
    public final void run() {
        if (UGCDetailActivity.d(this.a).getLineCount() > 5) {
            UGCDetailActivity.e(this.a).setVisibility(0);
            UGCDetailActivity.d(this.a).setEllipsize(TextUtils.TruncateAt.END);
            UGCDetailActivity.d(this.a).setClickable(true);
            UGCDetailActivity.d(this.a).setOnClickListener(UGCDetailActivity.l(this.a));
        }
    }
}
