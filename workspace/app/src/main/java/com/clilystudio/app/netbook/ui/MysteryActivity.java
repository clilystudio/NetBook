package com.clilystudio.app.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.AppItem;
import com.clilystudio.app.netbook.reader.random.ReaderRandomEntranceActivity;
import com.clilystudio.app.netbook.util.g;
import com.clilystudio.app.netbook.util.y;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class MysteryActivity extends BaseLoadingActivity {
    private TextView a;
    private View b;
    private bq c;
    private List<AppItem> e = new ArrayList();
    private int f = 0;
    private List<AppItem> g;
    private CountDownTimer h;
    private long i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private BroadcastReceiver o = new bn(this);

    private void j() {
        if (this.h != null) {
            this.h.cancel();
            this.h = null;
        }
    }

    private void k() {
        a.b(this, "KEY_SECRET_UNLOCKED", true);
        if ((this.m) && (!this.n)) {
            startActivity(new Intent(this, ReaderRandomEntranceActivity.class));
            finish();
            this.n = true;
        }
    }

    private void l() {
        if (this.e.isEmpty()) ;
        do {
            do
                return;
            while (!this.l);
            this.g = new g(this, this.e).a();
            y.a(this, this.g);
            this.c.a(this.g);
            if ((this.g == null) || (this.g.isEmpty())) {
                h();
                return;
            }
            f();
        }
        while (this.g == null);
        if ((this.g != null) && (this.g.isEmpty())) ;
        for (int i1 = 1; i1 != 0; i1 = 0) {
            k();
            return;
        }
        List localList = this.g;
        int i2;
        label175:
        long l1;
        if (localList != null) {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext())
                if (((AppItem) localIterator.next()).getDownloadStatus() == 32) {
                    i2 = 1;
                    if (i2 == 0)
                        break label250;
                    this.i = a.c(this, "first_tick_time", 0L);
                    this.f = 1;
                    this.b.setVisibility(0);
                    l1 = new Date().getTime();
                    if (this.i != 0L)
                        break label252;
                }
        }
        long l3;
        label250:
        label252:
        for (long l2 = 0L; ; l2 = l1 - this.i) {
            l3 = 180000L - l2;
            if (l3 > 0L)
                break label264;
            k();
            return;
            i2 = 0;
            break label175;
            break;
        }
        label264:
        this.h = new bo(this, l3, 1000L, l2);
        this.h.start();
    }

    protected final void b() {
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        a(2130903117);
        b("神秘功能");
        ListView localListView = (ListView) findViewById(2131493150);
        View localView = getLayoutInflater().inflate(2130903331, localListView, false);
        localListView.addHeaderView(localView, null, false);
        this.c = new bq(this, this);
        localListView.setAdapter(this.c);
        this.a = ((TextView) localView.findViewById(2131493810));
        this.b = localView.findViewById(2131493809);
        new bp(this, (byte) 0).b(new String[0]);
    }

    public void onPause() {
        super.onPause();
        this.m = false;
        unregisterReceiver(this.o);
        if ((this.j != 0L) && (this.i == 0L))
            a.d(this, "first_tick_time", this.j);
        j();
    }

    public void onResume() {
        super.onResume();
        this.m = true;
        registerReceiver(this.o, new IntentFilter("update_game_item_status"));
        if (!this.k)
            l();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.MysteryActivity
 * JD-Core Version:    0.6.2
 */