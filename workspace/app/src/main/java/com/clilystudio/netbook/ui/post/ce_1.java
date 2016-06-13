package com.clilystudio.netbook.ui.post;

final class ce
        implements Runnable {
    private /* synthetic */ cd a;

    ce(cd cd2) {
        this.a = cd2;
    }

    @Override
    public final void run() {
        OtherUserActivity.j(this.a.a);
    }
}
