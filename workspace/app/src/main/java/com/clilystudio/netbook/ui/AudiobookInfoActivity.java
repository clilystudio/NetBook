package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.event.p;
import com.clilystudio.netbook.model.AlbumSerialized;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LinearListView;
import com.clilystudio.netbook.widget.ad;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.HashMap;

public class AudiobookInfoActivity extends BaseActivity implements View.OnClickListener,
        ad {
    private View a;
    private View b;
    private View c;
    private TextView e;
    private TextView f;
    private ImageView g;
    private ImageView h;
    private RelativeLayout i;
    private RelativeLayout j;
    private LinearListView k;
    private boolean l;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private AlbumSerialized q;
    private as r;
    private CommonRequest s;
    private int t = 0;
    private int u = 100;
    private int v;
    private int w = 1;
    private int x = 1;
    private boolean y = true;
    private IXmPlayerStatusListener z;

    public AudiobookInfoActivity() {
        this.z = new F(this);
    }

    public static Intent a(Context context, long l) {
        return new d().a(context, AudiobookInfoActivity.class).a("ALBUM_ID", Long.valueOf(l)).a();
    }

    static /* synthetic */ AlbumSerialized a(AudiobookInfoActivity audiobookInfoActivity, AlbumSerialized albumSerialized) {
        audiobookInfoActivity.q = albumSerialized;
        return albumSerialized;
    }

    static /* synthetic */ void a(AudiobookInfoActivity audiobookInfoActivity) {
        audiobookInfoActivity.b();
    }

    static /* synthetic */ void a(AudiobookInfoActivity audiobookInfoActivity, int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                audiobookInfoActivity.a.setVisibility(View.VISIBLE);
                audiobookInfoActivity.b.setVisibility(View.GONE);
                audiobookInfoActivity.c.setVisibility(View.GONE);
                return;
            }
            case 0: {
                audiobookInfoActivity.a.setVisibility(View.GONE);
                audiobookInfoActivity.b.setVisibility(View.VISIBLE);
                audiobookInfoActivity.c.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        audiobookInfoActivity.a.setVisibility(View.GONE);
        audiobookInfoActivity.b.setVisibility(View.GONE);
        audiobookInfoActivity.c.setVisibility(View.VISIBLE);
    }

    static /* synthetic */ boolean a(AudiobookInfoActivity audiobookInfoActivity, boolean bl) {
        audiobookInfoActivity.l = bl;
        return bl;
    }

    static /* synthetic */ int b(AudiobookInfoActivity audiobookInfoActivity, int n) {
        audiobookInfoActivity.v = n;
        return n;
    }

    static /* synthetic */ boolean b(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.l;
    }

    static /* synthetic */ boolean b(AudiobookInfoActivity audiobookInfoActivity, boolean bl) {
        audiobookInfoActivity.n = bl;
        return bl;
    }

    static /* synthetic */ int c(AudiobookInfoActivity audiobookInfoActivity, int n) {
        audiobookInfoActivity.x = n;
        return n;
    }

    static /* synthetic */ AlbumSerialized c(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.q;
    }

    static /* synthetic */ void c(AudiobookInfoActivity audiobookInfoActivity, boolean bl) {
        audiobookInfoActivity.a(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void d(AudiobookInfoActivity audiobookInfoActivity) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("album_id", "" + audiobookInfoActivity.q.getId());
        if (audiobookInfoActivity.m) {
            hashMap.put("sort", "asc");
        } else {
            hashMap.put("sort", "desc");
        }
        hashMap.put("page", "" + audiobookInfoActivity.w);
        CommonRequest.getTracks(hashMap, new D(audiobookInfoActivity));
    }

    static /* synthetic */ boolean d(AudiobookInfoActivity audiobookInfoActivity, boolean bl) {
        audiobookInfoActivity.p = true;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void e(AudiobookInfoActivity audiobookInfoActivity) {
        ((CoverView) audiobookInfoActivity.findViewById(2131493282)).setImageUrl(audiobookInfoActivity.q.getUrl(), 2130837766);
        ((TextView) audiobookInfoActivity.findViewById(2131493283)).setText(audiobookInfoActivity.q.getTitle());
        ((TextView) audiobookInfoActivity.findViewById(2131493285)).setText(audiobookInfoActivity.q.getAnnouncer());
        TextView textView = (TextView) audiobookInfoActivity.findViewById(2131493293);
        Resources resources = audiobookInfoActivity.getResources();
        Object[] arrobject = new Object[]{audiobookInfoActivity.q.getTotalCount()};
        textView.setText(resources.getString(2131034530, arrobject));
        audiobookInfoActivity.e = (TextView) audiobookInfoActivity.findViewById(2131493295);
        audiobookInfoActivity.e.setOnClickListener(audiobookInfoActivity);
        audiobookInfoActivity.h = (ImageView) audiobookInfoActivity.findViewById(2131493294);
        audiobookInfoActivity.h.setOnClickListener(audiobookInfoActivity);
        audiobookInfoActivity.f = (TextView) audiobookInfoActivity.findViewById(2131493291);
        audiobookInfoActivity.g = (ImageView) audiobookInfoActivity.findViewById(2131493290);
        TextView textView2 = (TextView) audiobookInfoActivity.findViewById(2131493292);
        String string = audiobookInfoActivity.q.getIntro();
        if (string != null && string.length() > 0) {
            textView2.setText(string);
            textView2.post(new A(audiobookInfoActivity, textView2));
        } else {
            textView2.setText("\u6682\u65e0");
        }
        audiobookInfoActivity.i = (RelativeLayout) audiobookInfoActivity.findViewById(2131493289);
        audiobookInfoActivity.i.setOnClickListener(audiobookInfoActivity);
        audiobookInfoActivity.j = (RelativeLayout) audiobookInfoActivity.findViewById(2131493286);
        audiobookInfoActivity.j.setOnClickListener(audiobookInfoActivity);
        audiobookInfoActivity.k = (LinearListView) audiobookInfoActivity.findViewById(2131493296);
        audiobookInfoActivity.k.setPlayTrackInterface(audiobookInfoActivity);
        audiobookInfoActivity.k.setItemHeight(a.a((Context) audiobookInfoActivity, 56.0f));
        AudioRecord audioRecord = AudioRecord.find(String.valueOf(audiobookInfoActivity.q.getId()));
        if (audioRecord == null) {
            audiobookInfoActivity.o = false;
        } else {
            audiobookInfoActivity.o = true;
            audiobookInfoActivity.x = audioRecord.getTrack();
        }
        audiobookInfoActivity.g();
    }

    static /* synthetic */ boolean e(AudiobookInfoActivity audiobookInfoActivity, boolean bl) {
        audiobookInfoActivity.m = bl;
        return bl;
    }

    static /* synthetic */ boolean f(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.m;
    }

    static /* synthetic */ boolean f(AudiobookInfoActivity audiobookInfoActivity, boolean bl) {
        audiobookInfoActivity.y = true;
        return true;
    }

    static /* synthetic */ int g(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.w;
    }

    static /* synthetic */ LinearListView h(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.k;
    }

    static /* synthetic */ int i(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.u;
    }

    static /* synthetic */ int j(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.v;
    }

    static /* synthetic */ boolean k(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.o;
    }

    static /* synthetic */ boolean l(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.n;
    }

    static /* synthetic */ int m(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.x;
    }

    static /* synthetic */ int n(AudiobookInfoActivity audiobookInfoActivity) {
        int n = audiobookInfoActivity.w;
        audiobookInfoActivity.w = n + 1;
        return n;
    }

    static /* synthetic */ TextView o(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.e;
    }

    static /* synthetic */ boolean p(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.p;
    }

    static /* synthetic */ boolean q(AudiobookInfoActivity audiobookInfoActivity) {
        return audiobookInfoActivity.y;
    }

    static /* synthetic */ void r(AudiobookInfoActivity audiobookInfoActivity) {
        audiobookInfoActivity.h();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n) {
        this.t = n / this.u * this.u;
        int n2 = this.t + this.u > this.k.a().size() ? this.k.a().size() : this.t + this.u;
        this.r.a(this.k.a().subList(this.t, n2), n - this.t);
    }

    private void a(View view) {
        com.koushikdutta.async.http.a a2 = new com.koushikdutta.async.http.a(this, view);
        a2.b().inflate(2131558402, a2.a());
        a2.a(new E(this));
        a2.c();
    }

    private void a(boolean bl) {
        if (bl) {
            this.i.setBackgroundResource(2130837748);
            this.f.setText(this.getResources().getString(2131034310));
            this.f.setTextColor(this.getResources().getColor(2131427522));
            this.g.setImageResource(2130837919);
            return;
        }
        this.i.setBackgroundResource(am.b((Context) this, (int) 2130771971));
        this.f.setText(this.getResources().getString(2131034313));
        this.f.setTextColor(-1);
        this.g.setImageResource(2130837588);
    }

    private void b() {
        long l2 = this.getIntent().getLongExtra("ALBUM_ID", 0);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("ids", "" + l2);
        CommonRequest.getBatch(hashMap, new C(this));
    }

    /*
     * Enabled aggressive block sorting
     */
    private AudioRecord f() {
        AudioRecord audioRecord = new AudioRecord();
        audioRecord.setBookId(String.valueOf(this.q.getId()));
        audioRecord.setName(this.q.getTitle());
        audioRecord.setDesc(this.q.getLastTrackTitle());
        audioRecord.setImgUrl(this.q.getUrl());
        if (this.m) {
            audioRecord.setTrack(this.x);
        } else {
            audioRecord.setTrack(1 + (this.v - this.x));
        }
        audioRecord.setLastUpdate(this.q.getUpdateAt());
        return audioRecord;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void g() {
        int n = this.j.getPaddingLeft();
        int n2 = this.j.getPaddingTop();
        int n3 = this.j.getPaddingRight();
        int n4 = this.j.getPaddingBottom();
        RelativeLayout relativeLayout = this.j;
        int n5 = this.o ? 2130837711 : am.b((Context) this, (int) 2130771971);
        relativeLayout.setBackgroundResource(n5);
        this.j.setPadding(n, n2, n3, n4);
        TextView textView = (TextView) this.findViewById(2131493288);
        ImageView imageView = (ImageView) this.findViewById(2131493287);
        String string = this.o ? this.getString(2131034330) : this.getString(2131034328);
        textView.setText(string);
        int n6 = this.o ? 2130837714 : 2130837710;
        imageView.setImageResource(n6);
    }

    private void h() {
        com.clilystudio.netbook.event.F f2 = new com.clilystudio.netbook.event.F(this.q.getId(), this.i());
        i.a().c(f2);
        AudioRecord.updateTrack(String.valueOf(this.q.getId()), this.i());
    }

    private int i() {
        if (this.m) {
            return this.x;
        }
        return 1 + (this.v - this.x);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a(int n, boolean bl) {
        if (bl) {
            this.y = false;
            this.k.setPlayButtonDefault(this.x);
            this.x = n;
            this.k.a(this.x, true);
            this.a(n - 1);
            this.h();
        } else {
            as.h();
        }
        this.n = bl;
        this.a(bl);
        this.p = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493289: {
                if (this.n) {
                    this.n = false;
                } else {
                    this.n = true;
                    this.h();
                    this.y = false;
                }
                this.a(this.n);
                boolean bl = this.n;
                if (bl) {
                    this.a(-1 + this.x);
                } else {
                    as.h();
                }
                this.k.a(this.x, bl);
                this.p = true;
                return;
            }
            case 2131493286: {
                p p2 = new p();
                if (this.o) {
                    this.o = false;
                    p2.a(2);
                    p2.a(this.f());
                    i.a().c(p2);
                } else {
                    this.o = true;
                    p2.a(1);
                    p2.a(this.f());
                    i.a().c(p2);
                }
                this.g();
                return;
            }
            case 2131493295: {
                this.a(view);
                return;
            }
            case 2131493294:
        }
        this.a(view);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903081);
        this.r = as.a();
        this.s = as.b();
        try {
            this.s.setDefaultPagesize(this.u);
        } catch (XimalayaException var2_2) {
            var2_2.printStackTrace();
        }
        as.a(this.z);
        this.a = this.findViewById(2131492905);
        this.b = this.findViewById(2131493085);
        this.c = this.findViewById(2131493086);
        this.c.setOnClickListener(new z(this));
        this.b();
    }

    @Override
    protected void onDestroy() {
        as.b(this.z);
        super.onDestroy();
    }
}
