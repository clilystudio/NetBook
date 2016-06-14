package com.clilystudio.netbook.ui;

final class ci implements Runnable {
    private /* synthetic */ cl a;
    private /* synthetic */ long b;

    ci(SplashActivity splashActivity, cl cl2, long l) {
        this.a = cl2;
        this.b = l;
    }

    @Override
    public final void run() {
        this.a.a(this.b);
    }
}
