package com.clilystudio.netbook.ui;

import android.os.CountDownTimer;

final class bo extends CountDownTimer {

    private long a;
    private MysteryActivity b;
    bo(MysteryActivity MysteryActivity1, long long2, long long4, long long6) {
        super(long2, 1000L);
        b = MysteryActivity1;
        a = long6;
    }

    public final void onFinish() {
        MysteryActivity.c(b);
    }

    public final void onTick(long long1) {
        long long5 = long1 - a;

        if (long5 > 0L)
            MysteryActivity.b(b).setText((CharSequence) String.valueOf(long5 / 1000L));
        else {
            MysteryActivity.c(b);
            MysteryActivity.d(b);
        }
    }
}
