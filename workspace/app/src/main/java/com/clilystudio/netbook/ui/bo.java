package com.clilystudio.netbook.ui;

import android.os.CountDownTimer;

import java.util.Date;

final class bo extends CountDownTimer {
    private /* synthetic */ long a;
    private /* synthetic */ MysteryActivity b;

    bo(MysteryActivity mysteryActivity, long l, long l2, long l3) {
        this.b = mysteryActivity;
        this.a = l3;
        super(l, 1000);
    }

    @Override
    public final void onFinish() {
        MysteryActivity.c(this.b);
    }

    @Override
    public final void onTick(long l) {
        MysteryActivity.a(this.b, new Date().getTime());
        long l2 = l - this.a;
        if (l2 > 0) {
            MysteryActivity.b(this.b).setText(String.valueOf(l2 / 1000));
            return;
        }
        MysteryActivity.c(this.b);
        MysteryActivity.d(this.b);
    }
}
