package com.clilystudio.netbook.ui.ugcbook;

final class p
        implements Runnable {
    p(UGCDetailActivity paramUGCDetailActivity) {
    }

    public final void run() {
        if (UGCDetailActivity.d(this.a).getLineCount() > 5) {
            UGCDetailActivity.e(this.a).setVisibility(0);
            UGCDetailActivity.d(this.a).setEllipsize(TextUtils.TruncateAt.END);
            UGCDetailActivity.d(this.a).setClickable(true);
            UGCDetailActivity.d(this.a).setOnClickListener(UGCDetailActivity.l(this.a));
        }
    }
}

