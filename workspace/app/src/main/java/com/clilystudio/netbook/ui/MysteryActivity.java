package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.y;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class MysteryActivity extends BaseLoadingActivity {

    private TextView a;
    private View b;
    private bq c;
    private List g;
    private CountDownTimer h;
    private long i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private List e = new ArrayList();
    private int f = 0;
    private BroadcastReceiver o = new bn(this);

    static long a(MysteryActivity MysteryActivity1, long long2) {
        MysteryActivity1.j = long2;
        return long2;
    }

    static List a(MysteryActivity MysteryActivity1, List List2) {
        MysteryActivity1.e = List2;
        return List2;
    }

    static void a(MysteryActivity MysteryActivity1) {
        MysteryActivity1.l();
    }

    static boolean a(MysteryActivity MysteryActivity1, boolean boolean2) {
        MysteryActivity1.k = boolean2;
        return boolean2;
    }

    static TextView b(MysteryActivity MysteryActivity1) {
        return MysteryActivity1.a;
    }

    static boolean b(MysteryActivity MysteryActivity1, boolean boolean2) {
        MysteryActivity1.l = true;
        return true;
    }

    static void c(MysteryActivity MysteryActivity1) {
        MysteryActivity1.k();
    }

    static void d(MysteryActivity MysteryActivity1) {
        MysteryActivity1.j();
    }

    static int e(MysteryActivity MysteryActivity1) {
        return MysteryActivity1.f;
    }

    private void j() {
        if (h != null) {
            h.cancel();
            h = null;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void k() {
    }

    private void l() {
        if (!e.isEmpty() && l) {
            g = new com.clilystudio.netbook.util.g((Activity) this, e).a();
            y.a((Activity) this, g);
            c.a((Collection) g);
            if (g == null || g.isEmpty()) {
                h();
                return;
            } else {
                f();
                if (g != null) {
                    int int1;

                    if (g != null && g.isEmpty())
                        int1 = 1;
                    else
                        int1 = 0;
                    if (int1 != 0) {
                        k();
                        return;
                    } else {
                        List List2 = g;
                        int int3;

                        label_77:
                        {
                            if (List2 != null) {
                                Iterator Iterator11 = List2.iterator();

                                while (Iterator11.hasNext()) {
                                    if (((AppItem) Iterator11.next()).getDownloadStatus() != 32)
                                        continue;
                                    int3 = 1;
                                    break label_77;
                                }
                            }
                            int3 = 0;
                        }
                        if (int3 != 0) {
                            long long4;
                            long long6;
                            long long8;

                            i = com.clilystudio.netbook.hpay100.a.a.c((Context) this, "first_tick_time", 0L);
                            f = 1;
                            b.setVisibility(0);
                            long4 = new Date().getTime();
                            if (i == 0L)
                                long6 = 0L;
                            else
                                long6 = long4 - i;
                            long8 = 180000L - long6;
                            if (long8 <= 0L)
                                k();
                            else {
                                h = (CountDownTimer) new bo(this, long8, 1000L, long6);
                                h.start();
                            }
                            return;
                        }
                    }
                }
            }
        }
    }

    protected final void b() {
    }

    protected void onCreate(Bundle Bundle1) {
        Object Object2;
        View View3;

        super.onCreate(Bundle1);
        a(2130903117);
        b("\u795E\u79D8\u529F\u80FD");
        Object2 = (ListView) findViewById(2131493150);
        View3 = getLayoutInflater().inflate(2130903331, (ViewGroup) Object2, false);
        ((ListView) Object2).addHeaderView(View3, null, false);
        c = new bq(this, (Activity) this);
        ((ListView) Object2).setAdapter((ListAdapter) c);
        a = (TextView) View3.findViewById(2131493810);
        b = View3.findViewById(2131493809);
        new bp(this, (byte) 0).b(new String[0]);
    }

    public void onPause() {
        super.onPause();
        m = false;
        unregisterReceiver(o);
        if (j != 0L && i == 0L)
            com.clilystudio.netbook.hpay100.a.a.d((Context) this, "first_tick_time", j);
        j();
    }

    public void onResume() {
        super.onResume();
        m = true;
        registerReceiver(o, new IntentFilter("update_game_item_status"));
        if (!k)
            l();
    }
}
