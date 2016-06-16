package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.reader.random.ReaderRandomEntranceActivity;
import com.clilystudio.netbook.util.g;
import com.clilystudio.netbook.util.y;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class MysteryActivity extends BaseLoadingActivity {
    private TextView a;
    private View b;
    private bq c;
    private List<AppItem> e = new ArrayList<AppItem>();
    private int f = 0;
    private List<AppItem> g;
    private CountDownTimer h;
    private long i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private BroadcastReceiver o;

    public MysteryActivity() {
        this.o = new bn(this);
    }

    static /* synthetic */ long a(MysteryActivity mysteryActivity, long l) {
        mysteryActivity.j = l;
        return l;
    }

    static /* synthetic */ List a(MysteryActivity mysteryActivity, List list) {
        mysteryActivity.e = list;
        return list;
    }

    static /* synthetic */ void a(MysteryActivity mysteryActivity) {
        mysteryActivity.l();
    }

    static /* synthetic */ boolean a(MysteryActivity mysteryActivity, boolean bl) {
        mysteryActivity.k = bl;
        return bl;
    }

    static /* synthetic */ TextView b(MysteryActivity mysteryActivity) {
        return mysteryActivity.a;
    }

    static /* synthetic */ boolean b(MysteryActivity mysteryActivity, boolean bl) {
        mysteryActivity.l = true;
        return true;
    }

    static /* synthetic */ void c(MysteryActivity mysteryActivity) {
        mysteryActivity.k();
    }

    static /* synthetic */ void d(MysteryActivity mysteryActivity) {
        mysteryActivity.j();
    }

    static /* synthetic */ int e(MysteryActivity mysteryActivity) {
        return mysteryActivity.f;
    }

    private void j() {
        if (this.h != null) {
            this.h.cancel();
            this.h = null;
        }
    }

    private void k() {
        a.b((Context) this, "KEY_SECRET_UNLOCKED", true);
        if (this.m && !this.n) {
            this.startActivity(new Intent(this, ReaderRandomEntranceActivity.class));
            this.finish();
            this.n = true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void l() {
        if (this.e.isEmpty()) {
            return;
        }
        if (!this.l) return;
        this.g = new g((Activity) this, this.e).a();
        y.a((Activity) this, this.g);
        this.c.a(this.g);
        if (this.g == null || this.g.isEmpty()) {
            this.h();
            return;
        }
        this.f();
        if (this.g == null) return;
        boolean bl = this.g != null && this.g.isEmpty();
        if (bl) {
            this.k();
            return;
        }
        List<AppItem> list = this.g;
        if (list == null) return;
        Iterator<AppItem> iterator = list.iterator();
        do {
            if (!iterator.hasNext()) return;
        } while (iterator.next().getDownloadStatus() != 32);
        boolean bl2 = true;
        if (!bl2) return;
        this.i = a.c((Context) this, "first_tick_time", 0);
        this.f = 1;
        this.b.setVisibility(View.VISIBLE);
        long l2 = new Date().getTime();
        long l3 = this.i == 0 ? 0 : l2 - this.i;
        long l4 = 180000 - l3;
        if (l4 <= 0) {
            this.k();
            return;
        }
        this.h = new bo(this, l4, 1000, l3);
        this.h.start();
    }

    @Override
    protected final void b() {
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.activity_mystery);
        this.b("\u795e\u79d8\u529f\u80fd");
        ListView listView = (ListView) this.findViewById(R.id.mystery_list);
        View view = this.getLayoutInflater().inflate(R.layout.mystery_header, (ViewGroup) listView, false);
        listView.addHeaderView(view, null, false);
        this.c = new bq(this, (Activity) this);
        listView.setAdapter((ListAdapter) ((Object) this.c));
        this.a = (TextView) view.findViewById(R.id.progress);
        this.b = view.findViewById(R.id.progress_container);
        new bp(this, 0).b(new String[0]);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m = false;
        this.unregisterReceiver(this.o);
        if (this.j != 0 && this.i == 0) {
            a.d((Context) this, "first_tick_time", this.j);
        }
        this.j();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.m = true;
        this.registerReceiver(this.o, new IntentFilter("update_game_item_status"));
        if (!this.k) {
            this.l();
        }
    }
}
