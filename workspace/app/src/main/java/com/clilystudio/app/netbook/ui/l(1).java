package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.l
 * JD-Core Version:    0.6.2
 */