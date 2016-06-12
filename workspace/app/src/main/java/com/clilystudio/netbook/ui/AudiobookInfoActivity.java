package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.model.AlbumSerialized;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LinearListView;
import com.clilystudio.netbook.widget.ad;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.HashMap;
import java.util.Map;

public class AudiobookInfoActivity extends BaseActivity implements View$OnClickListener, ad {

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
    private AlbumSerialized q;
    private as r;
    private CommonRequest s;
    private int v;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private int t = 0;
    private int u = 100;
    private int w = 1;
    private int x = 1;
    private boolean y = true;
    private IXmPlayerStatusListener z = new F(this);
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, long long2) {
    }

    static AlbumSerialized a(AudiobookInfoActivity AudiobookInfoActivity1, AlbumSerialized AlbumSerialized2) {
        AudiobookInfoActivity1.q = AlbumSerialized2;
        return AlbumSerialized2;
    }

    static void a(AudiobookInfoActivity AudiobookInfoActivity1) {
        AudiobookInfoActivity1.b();
    }

    static void a(AudiobookInfoActivity AudiobookInfoActivity1, int int2) {
        switch (int2) {
            default:
                return;
            case 1:
                AudiobookInfoActivity1.a.setVisibility(0);
                AudiobookInfoActivity1.b.setVisibility(8);
                AudiobookInfoActivity1.c.setVisibility(8);
                return;
            case 0:
                AudiobookInfoActivity1.a.setVisibility(8);
                AudiobookInfoActivity1.b.setVisibility(0);
                AudiobookInfoActivity1.c.setVisibility(8);
                return;
            case 2:
                AudiobookInfoActivity1.a.setVisibility(8);
                AudiobookInfoActivity1.b.setVisibility(8);
                AudiobookInfoActivity1.c.setVisibility(0);
                return;
        }
    }

    static boolean a(AudiobookInfoActivity AudiobookInfoActivity1, boolean boolean2) {
        AudiobookInfoActivity1.l = boolean2;
        return boolean2;
    }

    static int b(AudiobookInfoActivity AudiobookInfoActivity1, int int2) {
        AudiobookInfoActivity1.v = int2;
        return int2;
    }

    static boolean b(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.l;
    }

    static boolean b(AudiobookInfoActivity AudiobookInfoActivity1, boolean boolean2) {
        AudiobookInfoActivity1.n = boolean2;
        return boolean2;
    }

    static int c(AudiobookInfoActivity AudiobookInfoActivity1, int int2) {
        AudiobookInfoActivity1.x = int2;
        return int2;
    }

    static AlbumSerialized c(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.q;
    }

    static void c(AudiobookInfoActivity AudiobookInfoActivity1, boolean boolean2) {
        AudiobookInfoActivity1.a(boolean2);
    }

    static void d(AudiobookInfoActivity AudiobookInfoActivity1) {
        Object Object2 = new HashMap();

        ((Map) Object2).put("album_id", new StringBuilder().append(AudiobookInfoActivity1.q.getId()).toString());
        if (AudiobookInfoActivity1.m)
            ((Map) Object2).put("sort", "asc");
        else
            ((Map) Object2).put("sort", "desc");
        ((Map) Object2).put("page", new StringBuilder().append(AudiobookInfoActivity1.w).toString());
        CommonRequest.getTracks((Map) Object2, (IDataCallBack) new D(AudiobookInfoActivity1));
    }

    static boolean d(AudiobookInfoActivity AudiobookInfoActivity1, boolean boolean2) {
        AudiobookInfoActivity1.p = true;
        return true;
    }

    static void e(AudiobookInfoActivity AudiobookInfoActivity1) {
        TextView TextView2;
        Resources Resources3;
        Object[] Object_1darray4;
        TextView TextView5;
        Object Object6;
        AudioRecord AudioRecord7;

        ((CoverView) AudiobookInfoActivity1.findViewById(2131493282)).setImageUrl(AudiobookInfoActivity1.q.getUrl(), 2130837766);
        ((TextView) AudiobookInfoActivity1.findViewById(2131493283)).setText((CharSequence) AudiobookInfoActivity1.q.getTitle());
        ((TextView) AudiobookInfoActivity1.findViewById(2131493285)).setText((CharSequence) AudiobookInfoActivity1.q.getAnnouncer());
        TextView2 = (TextView) AudiobookInfoActivity1.findViewById(2131493293);
        Resources3 = AudiobookInfoActivity1.getResources();
        Object_1darray4 = new Object[1];
        Object_1darray4[0] = Long.valueOf(AudiobookInfoActivity1.q.getTotalCount());
        TextView2.setText((CharSequence) Resources3.getString(2131034530, Object_1darray4));
        AudiobookInfoActivity1.e = (TextView) AudiobookInfoActivity1.findViewById(2131493295);
        AudiobookInfoActivity1.e.setOnClickListener(AudiobookInfoActivity1);
        AudiobookInfoActivity1.h = (ImageView) AudiobookInfoActivity1.findViewById(2131493294);
        AudiobookInfoActivity1.h.setOnClickListener(AudiobookInfoActivity1);
        AudiobookInfoActivity1.f = (TextView) AudiobookInfoActivity1.findViewById(2131493291);
        AudiobookInfoActivity1.g = (ImageView) AudiobookInfoActivity1.findViewById(2131493290);
        TextView5 = (TextView) AudiobookInfoActivity1.findViewById(2131493292);
        Object6 = AudiobookInfoActivity1.q.getIntro();
        if (Object6 != null && ((String) Object6).length() > 0) {
            TextView5.setText((CharSequence) Object6);
            TextView5.post((Runnable) new A(AudiobookInfoActivity1, TextView5));
        } else
            TextView5.setText((CharSequence) "\u6682\u65E0");
        AudiobookInfoActivity1.i = (RelativeLayout) AudiobookInfoActivity1.findViewById(2131493289);
        AudiobookInfoActivity1.i.setOnClickListener(AudiobookInfoActivity1);
        AudiobookInfoActivity1.j = (RelativeLayout) AudiobookInfoActivity1.findViewById(2131493286);
        AudiobookInfoActivity1.j.setOnClickListener(AudiobookInfoActivity1);
        AudiobookInfoActivity1.k = (LinearListView) AudiobookInfoActivity1.findViewById(2131493296);
        AudiobookInfoActivity1.k.setPlayTrackInterface(AudiobookInfoActivity1);
        AudiobookInfoActivity1.k.setItemHeight(com.clilystudio.netbook.hpay100.a.a.a((Context) AudiobookInfoActivity1, 56.0F));
        AudioRecord7 = AudioRecord.find(String.valueOf(AudiobookInfoActivity1.q.getId()));
        if (AudioRecord7 == null)
            AudiobookInfoActivity1.o = false;
        else {
            AudiobookInfoActivity1.o = true;
            AudiobookInfoActivity1.x = AudioRecord7.getTrack();
        }
        AudiobookInfoActivity1.g();
    }

    static boolean e(AudiobookInfoActivity AudiobookInfoActivity1, boolean boolean2) {
        AudiobookInfoActivity1.m = boolean2;
        return boolean2;
    }

    static boolean f(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.m;
    }

    static boolean f(AudiobookInfoActivity AudiobookInfoActivity1, boolean boolean2) {
        AudiobookInfoActivity1.y = true;
        return true;
    }

    static int g(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.w;
    }

    static LinearListView h(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.k;
    }

    static int i(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.u;
    }

    static int j(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.v;
    }

    static boolean k(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.o;
    }

    static boolean l(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.n;
    }

    static int m(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.x;
    }

    static int n(AudiobookInfoActivity AudiobookInfoActivity1) {
        int int2 = AudiobookInfoActivity1.w;

        AudiobookInfoActivity1.w = int2 + 1;
        return int2;
    }

    static TextView o(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.e;
    }

    static boolean p(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.p;
    }

    static boolean q(AudiobookInfoActivity AudiobookInfoActivity1) {
        return AudiobookInfoActivity1.y;
    }

    static void r(AudiobookInfoActivity AudiobookInfoActivity1) {
        AudiobookInfoActivity1.h();
    }

    private void a(int int1) {
        int int2;

        t = int1 / u * u;
        if (t + u > k.a().size())
            int2 = k.a().size();
        else
            int2 = t + u;
        r.a(k.a().subList(t, int2), int1 - t);
    }

    private void a(View View1) {
        com.koushikdutta.async.http.a a2 = new com.koushikdutta.async.http.a((Context) this, View1);

        a2.b().inflate(2131558402, a2.a());
        a2.a((android.support.v7.widget.m) new E(this));
        a2.c();
    }

    private void a(boolean boolean1) {
        if (boolean1) {
            i.setBackgroundResource(2130837748);
            f.setText((CharSequence) getResources().getString(2131034310));
            f.setTextColor(getResources().getColor(2131427522));
            g.setImageResource(2130837919);
        } else {
            i.setBackgroundResource(am.b((Context) this, 2130771971));
            f.setText((CharSequence) getResources().getString(2131034313));
            f.setTextColor(-1);
            g.setImageResource(2130837588);
        }
    }

    private void b() {
        long long1 = getIntent().getLongExtra("ALBUM_ID", 0L);
        Object Object3 = new HashMap();

        ((Map) Object3).put("ids", new StringBuilder().append(long1).toString());
        CommonRequest.getBatch((Map) Object3, (IDataCallBack) new C(this));
    }

    private AudioRecord f() {
        AudioRecord AudioRecord1 = new AudioRecord();

        AudioRecord1.setBookId(String.valueOf(q.getId()));
        AudioRecord1.setName(q.getTitle());
        AudioRecord1.setDesc(q.getLastTrackTitle());
        AudioRecord1.setImgUrl(q.getUrl());
        if (m)
            AudioRecord1.setTrack(x);
        else
            AudioRecord1.setTrack(1 + (v - x));
        AudioRecord1.setLastUpdate(q.getUpdateAt());
        return AudioRecord1;
    }

    private void g() {
        int int1 = j.getPaddingLeft();
        int int2 = j.getPaddingTop();
        int int3 = j.getPaddingRight();
        int int4 = j.getPaddingBottom();
        RelativeLayout RelativeLayout5 = j;
        int int6;
        TextView TextView7;
        ImageView ImageView8;
        Object Object9;
        int int10;

        if (o)
            int6 = 2130837711;
        else
            int6 = am.b((Context) this, 2130771971);
        RelativeLayout5.setBackgroundResource(int6);
        j.setPadding(int1, int2, int3, int4);
        TextView7 = (TextView) findViewById(2131493288);
        ImageView8 = (ImageView) findViewById(2131493287);
        if (o)
            Object9 = getString(2131034330);
        else
            Object9 = getString(2131034328);
        TextView7.setText((CharSequence) Object9);
        if (o)
            int10 = 2130837714;
        else
            int10 = 2130837710;
        ImageView8.setImageResource(int10);
    }

    private void h() {
        com.clilystudio.netbook.event.F F1 = new com.clilystudio.netbook.event.F((long) q.getId(), i());

        com.clilystudio.netbook.event.i.a().c(F1);
        AudioRecord.updateTrack(String.valueOf(q.getId()), i());
    }

    private int i() {
        if (m)
            return x;
        else
            return 1 + (v - x);
    }

    public final void a(int int1, boolean boolean2) {
        if (boolean2) {
            y = false;
            k.setPlayButtonDefault(x);
            x = int1;
            k.a(x, true);
            a(int1 - 1);
            h();
        } else
            as.h();
        n = boolean2;
        a(boolean2);
        p = true;
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            default:
                return;
            case 2131493289:
                boolean boolean3;

                if (n)
                    n = false;
                else {
                    n = true;
                    h();
                    y = false;
                }
                a(n);
                boolean3 = n;
                if (boolean3)
                    a(-1 + x);
                else
                    as.h();
                k.a(x, boolean3);
                p = true;
                return;
            case 2131493286:
                Object Object2 = new com.clilystudio.netbook.event.p();

                if (o) {
                    o = false;
                    ((com.clilystudio.netbook.event.p) Object2).a(2);
                    ((com.clilystudio.netbook.event.p) Object2).a(f());
                    com.clilystudio.netbook.event.i.a().c(Object2);
                } else {
                    o = true;
                    ((com.clilystudio.netbook.event.p) Object2).a(1);
                    ((com.clilystudio.netbook.event.p) Object2).a(f());
                    com.clilystudio.netbook.event.i.a().c(Object2);
                }
                g();
                return;
            case 2131493295:
                a(View1);
                return;
            case 2131493294:
                a(View1);
                return;
        }
    }

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903081);
        r = as.a();
        s = as.b();
        try {
            s.setDefaultPagesize(u);
        } catch (XimalayaException XimalayaException2) {
            XimalayaException2.printStackTrace();
        }
        as.a(z);
        a = findViewById(2131492905);
        b = findViewById(2131493085);
        c = findViewById(2131493086);
        c.setOnClickListener((View$OnClickListener) new z(this));
        b();
    }

    protected void onDestroy() {
        as.b(z);
        super.onDestroy();
    }
}
