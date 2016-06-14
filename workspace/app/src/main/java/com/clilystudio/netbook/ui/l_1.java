package com.clilystudio.netbook.ui;

final class l implements Runnable {
    private /* synthetic */ AudioBookPlayActivity a;

    l(AudioBookPlayActivity audioBookPlayActivity) {
        this.a = audioBookPlayActivity;
    }

    @Override
    public final void run() {
        int n = AudioBookPlayActivity.s(this.a).getFirstVisiblePosition();
        if (n >= AudioBookPlayActivity.k(this.a)) {
            AudioBookPlayActivity.s(this.a).smoothScrollToPosition(AudioBookPlayActivity.k(this.a));
            return;
        }
        AudioBookPlayActivity.s(this.a).smoothScrollToPosition(AudioBookPlayActivity.k(this.a) + (AudioBookPlayActivity.s(this.a).getLastVisiblePosition() - n) / 2);
    }
}
