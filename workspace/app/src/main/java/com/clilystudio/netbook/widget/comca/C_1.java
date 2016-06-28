package com.clilystudio.netbook.widget.comca;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import com.c.a.w;
import java.util.ArrayList;

final class C extends Handler {
    private C() {
    }

    /* synthetic */ C(byte by) {
        this();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void handleMessage(Message var1_1) {
        var2_2 = (ArrayList)w.h().get();
        var3_3 = (ArrayList)w.i().get();
        switch (var1_1.what) {
            default: {
                return;
            }
            case 0: {
                var26_4 = (ArrayList)w.j().get();
                var4_5 = var2_2.size() <= 0 && var3_3.size() <= 0;
            }
            case 1: {
                var4_5 = true;
                ** GOTO lbl24
            }
        }
        while (var26_4.size() > 0) {
            var27_6 = (ArrayList)var26_4.clone();
            var26_4.clear();
            var28_7 = var27_6.size();
            for (var29_8 = 0; var29_8 < var28_7; ++var29_8) {
                var30_9 = (w)var27_6.get(var29_8);
                if (w.a(var30_9) == 0) {
                    w.b(var30_9);
                    continue;
                }
                var3_3.add(var30_9);
            }
        }
lbl24: // 2 sources:
        var5_10 = AnimationUtils.currentAnimationTimeMillis();
        var7_11 = (ArrayList)w.k().get();
        var8_12 = (ArrayList)w.l().get();
        var9_13 = var3_3.size();
        for (var10_14 = 0; var10_14 < var9_13; ++var10_14) {
            var24_15 = (w)var3_3.get(var10_14);
            if (!w.a(var24_15, var5_10)) continue;
            var7_11.add(var24_15);
        }
        var11_16 = var7_11.size();
        if (var11_16 > 0) {
            for (var20_17 = 0; var20_17 < var11_16; ++var20_17) {
                var21_18 = (w)var7_11.get(var20_17);
                w.b(var21_18);
                w.a(var21_18, true);
                var3_3.remove(var21_18);
            }
            var7_11.clear();
        }
        var12_19 = var2_2.size();
        var13_20 = 0;
        var14_21 = var12_19;
        while (var13_20 < var14_21) {
            var17_22 = (w)var2_2.get(var13_20);
            if (var17_22.c(var5_10)) {
                var8_12.add(var17_22);
            }
            if (var2_2.size() == var14_21) {
                ++var13_20;
                continue;
            }
            --var14_21;
            var8_12.remove(var17_22);
        }
        if (var8_12.size() > 0) {
            for (var16_23 = 0; var16_23 < var8_12.size(); ++var16_23) {
                w.c((w)var8_12.get(var16_23));
            }
            var8_12.clear();
        }
        if (var4_5 == false) return;
        if (var2_2.isEmpty()) {
            if (var3_3.isEmpty() != false) return;
        }
        this.sendEmptyMessageDelayed(1, Math.max(0, w.m() - (AnimationUtils.currentAnimationTimeMillis() - var5_10)));
    }
}
