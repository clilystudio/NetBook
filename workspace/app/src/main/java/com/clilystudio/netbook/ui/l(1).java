package com.clilystudio.netbook.ui;

final class l
        implements Runnable {
    l(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void run() {
        int i = AudioBookPlayActivity.s(this.a).getFirstVisiblePosition();
        if (i >= AudioBookPlayActivity.k(this.a)) {
            AudioBookPlayActivity.s(this.a).smoothScrollToPosition(AudioBookPlayActivity.k(this.a));
            return;
        }
        AudioBookPlayActivity.s(this.a).smoothScrollToPosition(AudioBookPlayActivity.k(this.a) + (AudioBookPlayActivity.s(this.a).getLastVisiblePosition() - i) / 2);
    }
}

