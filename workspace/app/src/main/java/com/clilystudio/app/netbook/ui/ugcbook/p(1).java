package com.clilystudio.app.netbook.ui.ugcbook;

final class p
        implements Runnable {
    p(UGCDetailActivity paramUGCDetailActivity) {
    }

    public final void run() {
        if (UGCDetailActivity.d_setTitle(this.a).getLineCount() > 5) {
            UGCDetailActivity.d_setRight(this.a).setVisibility(0);
            UGCDetailActivity.d_setTitle(this.a).setEllipsize(TextUtils.TruncateAt.END);
            UGCDetailActivity.d_setTitle(this.a).setClickable(true);
            UGCDetailActivity.d_setTitle(this.a).setOnClickListener(UGCDetailActivity.l(this.a));
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.p
 * JD-Core Version:    0.6.2
 */