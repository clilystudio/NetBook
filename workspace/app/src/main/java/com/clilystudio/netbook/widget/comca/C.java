package com.clilystudio.netbook.widget.comca;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;

import java.util.ArrayList;

final class C extends Handler {
    public final void handleMessage(Message paramMessage) {
        ArrayList localArrayList1 = (ArrayList) w.h().get();
        ArrayList localArrayList2 = (ArrayList) w.i().get();
        ArrayList localArrayList5;
        int i;
        switch (paramMessage.what) {
            default:
                return;
            case 0:
                localArrayList5 = (ArrayList) w.j().get();
                if ((localArrayList1.size() <= 0) && (localArrayList2.size() <= 0))
                    break;
                i = 0;
            case 1:
        }
        while (true) {
            if (localArrayList5.size() > 0) {
                ArrayList localArrayList6 = (ArrayList) localArrayList5.clone();
                localArrayList5.clear();
                int i5 = localArrayList6.size();
                int i6 = 0;
                if (i6 >= i5)
                    continue;
                w localw4 = (w) localArrayList6.get(i6);
                if (w.a(localw4) == 0L)
                    w.b(localw4);
                while (true) {
                    i6++;
                    break;
                    localArrayList2.add(localw4);
                }
                i = 1;
            }
            long l = AnimationUtils.currentAnimationTimeMillis();
            ArrayList localArrayList3 = (ArrayList) w.k().get();
            ArrayList localArrayList4 = (ArrayList) w.l().get();
            int j = localArrayList2.size();
            for (int k = 0; k < j; k++) {
                w localw3 = (w) localArrayList2.get(k);
                if (!w.a(localw3, l))
                    continue;
                localArrayList3.add(localw3);
            }
            int m = localArrayList3.size();
            if (m > 0) {
                for (int i4 = 0; i4 < m; i4++) {
                    w localw2 = (w) localArrayList3.get(i4);
                    w.b(localw2);
                    w.a(localw2, true);
                    localArrayList2.remove(localw2);
                }
                localArrayList3.clear();
            }
            int n = localArrayList1.size();
            int i1 = 0;
            int i2 = n;
            while (i1 < i2) {
                w localw1 = (w) localArrayList1.get(i1);
                if (localw1.c(l))
                    localArrayList4.add(localw1);
                if (localArrayList1.size() == i2) {
                    i1++;
                    continue;
                }
                i2--;
                localArrayList4.remove(localw1);
            }
            if (localArrayList4.size() > 0) {
                for (int i3 = 0; i3 < localArrayList4.size(); i3++)
                    w.c((w) localArrayList4.get(i3));
                localArrayList4.clear();
            }
            if ((i == 0) || ((localArrayList1.isEmpty()) && (localArrayList2.isEmpty())))
                break;
            sendEmptyMessageDelayed(1, Math.max(0L, w.m() - (AnimationUtils.currentAnimationTimeMillis() - l)));
            return;
            i = 1;
        }
    }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.C
 * JD-Core Version:    0.6.0
 */