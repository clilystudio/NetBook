package com.clilystudio.app.netbook.ui;

import android.os.CountDownTimer;

import java.util.Date;

final class bo extends CountDownTimer {
    bo(MysteryActivity paramMysteryActivity, long paramLong1, long paramLong2, long paramLong3) {
        super(paramLong1, 1000L);
    }

    public final void onFinish() {
        MysteryActivity.c_initContentView(this.b);
    }

    public final void onTick(long paramLong) {
        MysteryActivity.a(this.b, new Date().getTime());
        long l = paramLong - this.a;
        if (l > 0L) {
            MysteryActivity.b_initContentView(this.b).setText(String.valueOf(l / 1000L));
            return;
        }
        MysteryActivity.c_initContentView(this.b);
        MysteryActivity.d_setTitle(this.b);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bo
 * JD-Core Version:    0.6.2
 */