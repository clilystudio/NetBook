package com.clilystudio.netbook.hpay100.c;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class i implements Runnable {

    private Context a;     // final access specifier removed

    i(Context Context1) {
        a = Context1;
    }

    public final void run() {
        Object Object1 = new ArrayList();

        label_106:
        {
            try {
                List List3 = h.a(h.c());
                List List4 = ((ActivityManager) a.getSystemService("activity")).getRunningAppProcesses();
                PackageManager PackageManager5 = a.getPackageManager();
                Iterator Iterator6 = List4.iterator();

                while (Iterator6.hasNext())
                    ;
                if (((List) Object1).size() != 0)
                    break label_106;
                h.a(0);
            } catch (Exception Exception2) {
                Exception2.printStackTrace();
                return;
            }
            return;
        }
        try {
            Iterator Iterator16;

            h.a(2);
            Iterator16 = ((List) Object1).iterator();
            do {
                if (Iterator16.hasNext())
                    continue;
                else
                    return;
            }
            while (((com.clilystudio.netbook.hpay100.config.a) Iterator16.next()).a != 1);
            h.a(1);
        } catch (Exception Exception17) {
            Exception17.printStackTrace();
            return;
        }
    }
}
