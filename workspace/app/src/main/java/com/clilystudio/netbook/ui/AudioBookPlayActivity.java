package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.event.F;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AudioBookPlayActivity extends BaseActivity implements View$OnClickListener {

    private n A;
    private CommonRequest a;
    private List b;
    private long c;
    private int e;
    private int f;
    private int g;
    private Track h;
    private int i;
    private View n;
    private CornerImageView o;
    private TextView p;
    private TextView q;
    private ScrollLoadListView r;
    private SeekBar s;
    private TextView t;
    private TextView u;
    private ImageButton v;
    private ImageButton w;
    private ImageButton x;
    private View y;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    private as z = as.a();
    private int B = 0;
    private int C = 100;
    private av D = new j(this);
    private IXmPlayerStatusListener E = new m(this);

    static int a(AudioBookPlayActivity AudioBookPlayActivity1, int int2) {
        AudioBookPlayActivity1.f = 1;
        return 1;
    }

    static Track a(AudioBookPlayActivity AudioBookPlayActivity1, Track Track2) {
        AudioBookPlayActivity1.h = Track2;
        return Track2;
    }

    static IXmPlayerStatusListener a(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.E;
    }

    static void a(AudioBookPlayActivity AudioBookPlayActivity1, TextView TextView2, int int3) {
        AudioBookPlayActivity1.a(TextView2, int3);
    }

    static boolean a(AudioBookPlayActivity AudioBookPlayActivity1, boolean boolean2) {
        AudioBookPlayActivity1.l = boolean2;
        return boolean2;
    }

    static int b(AudioBookPlayActivity AudioBookPlayActivity1, int int2) {
        AudioBookPlayActivity1.e = int2;
        return int2;
    }

    static as b(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.z;
    }

    static void b(AudioBookPlayActivity AudioBookPlayActivity1, boolean boolean2) {
        AudioBookPlayActivity1.a(true);
    }

    static void c(AudioBookPlayActivity AudioBookPlayActivity1) {
        AudioBookPlayActivity1.b();
    }

    static void c(AudioBookPlayActivity AudioBookPlayActivity1, int int2) {
        AudioBookPlayActivity1.a(int2);
    }
// Error: Internal #201: 
// The following method may not be correct.

    static boolean c(AudioBookPlayActivity AudioBookPlayActivity1, boolean boolean2) {
        AudioBookPlayActivity1.m = false;
        return false;
    }

    static long d(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.c;
    }

    static void d(AudioBookPlayActivity AudioBookPlayActivity1, int int2) {
        AudioRecord.updateTrack(String.valueOf(AudioBookPlayActivity1.c), int2);
        com.clilystudio.netbook.event.i.a().c(new F(AudioBookPlayActivity1.c, int2));
    }

    static boolean d(AudioBookPlayActivity AudioBookPlayActivity1, boolean boolean2) {
        AudioBookPlayActivity1.k = boolean2;
        return boolean2;
    }

    static boolean e(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.j;
    }

    static boolean e(AudioBookPlayActivity AudioBookPlayActivity1, boolean boolean2) {
        AudioBookPlayActivity1.j = boolean2;
        return boolean2;
    }

    static int f(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.i;
    }

    static TextView g(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.t;
    }

    static void h(AudioBookPlayActivity AudioBookPlayActivity1) {
        if (AudioBookPlayActivity1.l && AudioBookPlayActivity1.b.size() < AudioBookPlayActivity1.g)
            com.clilystudio.netbook.util.e.a((Context) AudioBookPlayActivity1, "\u6B63\u5728\u83B7\u53D6\u66F4\u591A\u7AE0\u8282");
        if (!AudioBookPlayActivity1.m && AudioBookPlayActivity1.g > 0 && AudioBookPlayActivity1.b.size() < AudioBookPlayActivity1.g) {
            AudioBookPlayActivity1.f = 1 + AudioBookPlayActivity1.f;
            AudioBookPlayActivity1.g();
        } else
            AudioBookPlayActivity1.l = false;
    }

    static List i(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.b;
    }

    static void j(AudioBookPlayActivity AudioBookPlayActivity1) {
        AudioBookPlayActivity1.i();
    }

    static int k(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.e;
    }

    static void l(AudioBookPlayActivity AudioBookPlayActivity1) {
        AudioBookPlayActivity1.f();
    }

    static int m(AudioBookPlayActivity AudioBookPlayActivity1) {
        int int2 = AudioBookPlayActivity1.f;

        AudioBookPlayActivity1.f = int2 + 1;
        return int2;
    }

    static void n(AudioBookPlayActivity AudioBookPlayActivity1) {
        AudioBookPlayActivity1.g();
    }

    static boolean o(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.l;
    }

    static void p(AudioBookPlayActivity AudioBookPlayActivity1) {
        AudioBookPlayActivity1.j();
    }

    static int q(AudioBookPlayActivity AudioBookPlayActivity1) {
        int int2 = AudioBookPlayActivity1.f;

        AudioBookPlayActivity1.f = int2 - 1;
        return int2;
    }

    static int r(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.f;
    }

    static ScrollLoadListView s(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.r;
    }

    static ImageButton t(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.w;
    }

    static boolean u(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.k;
    }

    static TextView v(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.u;
    }

    static SeekBar w(AudioBookPlayActivity AudioBookPlayActivity1) {
        return AudioBookPlayActivity1.s;
    }

    static int x(AudioBookPlayActivity AudioBookPlayActivity1) {
        int int2 = AudioBookPlayActivity1.e;

        AudioBookPlayActivity1.e = int2 + 1;
        return int2;
    }

    static void y(AudioBookPlayActivity AudioBookPlayActivity1) {
        AudioBookPlayActivity1.h();
    }

    private void a(int int1) {
        int int2;

        B = int1 / C * C;
        if (B + C > b.size())
            int2 = b.size();
        else
            int2 = B + C;
        z.a(b.subList(B, int2), int1 - B);
    }

    private void a(TextView TextView1, int int2) {
        int int3 = int2 / 60;
        int int4 = int2 % 60;
        StringBuilder StringBuilder5 = new StringBuilder();
        Object Object6;
        StringBuilder StringBuilder7;
        Object Object8;

        if (int3 < 10)
            Object6 = new StringBuilder("0").append(int3).toString();
        else
            Object6 = Integer.valueOf(int3);
        StringBuilder7 = StringBuilder5.append(Object6).append(":");
        if (int4 < 10)
            Object8 = new StringBuilder("0").append(int4).toString();
        else
            Object8 = Integer.valueOf(int4);
        TextView1.setText((CharSequence) StringBuilder7.append(Object8).toString());
    }

    private void a(boolean boolean1) {
        if (e == 0 && boolean1)
            v.setEnabled(false);
        else
            v.setEnabled(boolean1);
        w.setEnabled(boolean1);
        if (b != null && e == -1 + b.size() && boolean1)
            x.setEnabled(false);
        else
            x.setEnabled(boolean1);
    }

    private void b() {
    }

    private void f() {
        if (h != null) {
            i = h.getDuration();
            q.setText((CharSequence) h.getTrackTitle());
            a(u, i);
        }
        a(t, 0);
        if (e == 0)
            v.setEnabled(false);
        else if (b.size() > e)
            v.setEnabled(true);
        if (b != null && e == -1 + b.size())
            x.setEnabled(false);
        else if (b.size() > e) {
            x.setEnabled(true);
            return;
        }
    }

    private void g() {
        if (!m) {
            Object Object1;

            m = true;
            Object1 = new HashMap();
            ((Map) Object1).put("album_id", new StringBuilder().append(c).toString());
            ((Map) Object1).put("sort", "asc");
            ((Map) Object1).put("page", new StringBuilder().append(f).toString());
            try {
                a.setDefaultPagesize(C);
            } catch (XimalayaException XimalayaException5) {
                XimalayaException5.printStackTrace();
            }
            CommonRequest.getTracks((Map) Object1, (IDataCallBack) new k(this));
        }
    }

    private void h() {
        if (e >= B + C)
            a(e);
        else
            as.g();
    }

    private void i() {
        if (A != null)
            A.notifyDataSetChanged();
    }

    private void j() {
        new Handler().post((Runnable) new l(this));
    }

    public final void a(TrackList TrackList1) {
        y.setVisibility(8);
        b = TrackList1.getTracks();
        g = TrackList1.getTotalCount();
        o.setImageUrl(TrackList1.getCoverUrlMiddle());
        p.setText((CharSequence) TrackList1.getAlbumTitle());
        if (b != null && b.size() > 0) {
            A = new n(this, (Context) this);
            r.setAdapter((ListAdapter) A);
            if (b.size() > e) {
                a(true);
                h = (Track) b.get(e);
            }
        }
    }

    public void onBackPressed() {
        b();
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            default:
                return;
            case 441:
                if (b != null && e == 0)
                    com.clilystudio.netbook.util.e.a((Context) this, "\u5DF2\u7ECF\u662F\u7B2C\u4E00\u9996");
                else {
                    a(false);
                    e = -1 + e;
                    h = (Track) b.get(e);
                    f();
                    if (e < B)
                        a(e);
                    else
                        as.f();
                }
                return;
            case 442:
                if (as.c())
                    as.h();
                else
                    z.d();
                return;
            case 443:
                if (b != null && e >= -1 + b.size())
                    com.clilystudio.netbook.util.e.a((Context) this, "\u5DF2\u7ECF\u662F\u6700\u540E\u4E00\u9996");
                else {
                    a(false);
                    e = 1 + e;
                    h = (Track) b.get(e);
                    f();
                    h();
                }
                return;
        }
    }

    protected void onCreate(Bundle Bundle1) {
        View View2;
        View View3;

        super.onCreate(Bundle1);
        setContentView(2130903082);
        com.clilystudio.netbook.event.i.a().a(this);
        a("", 2131034372, (aa) new f(this));
        a = as.b();
        as.a(E);
        if (getIntent() != null) {
            if (getIntent().hasExtra("ALBUM_ID"))
                c = getIntent().getLongExtra("ALBUM_ID", 0L);
            if (getIntent().hasExtra("INDEX_OF_PLAYLIST")) {
                e = -1 + getIntent().getIntExtra("INDEX_OF_PLAYLIST", 1);
                try {
                    a.setDefaultPagesize(C);
                } catch (XimalayaException XimalayaException4) {
                    XimalayaException4.printStackTrace();
                }
            }
        }
        r = (ScrollLoadListView) findViewById(2131493091);
        r.setOnLastItemListener(D);
        View2 = getLayoutInflater().inflate(2130903152, null);
        r.addHeaderView(View2);
        View3 = getLayoutInflater().inflate(2130903151, null);
        r.addFooterView(View3);
        y = findViewById(2131493092);
        n = findViewById(2131493087);
        o = (CornerImageView) findViewById(2131493088);
        p = (TextView) findViewById(2131493089);
        q = (TextView) findViewById(2131493090);
        s = (SeekBar) findViewById(2131493301);
        t = (TextView) findViewById(2131493303);
        u = (TextView) findViewById(2131493304);
        v = (ImageButton) findViewById(2131493305);
        w = (ImageButton) findViewById(2131493306);
        x = (ImageButton) findViewById(2131493307);
        v.setOnClickListener(this);
        w.setOnClickListener(this);
        x.setOnClickListener(this);
        findViewById(2131493302).setOnTouchListener((View$OnTouchListener) new g(this));
        n.setClickable(true);
        n.setOnClickListener((View$OnClickListener) new h(this));
        a(false);
        s.setThumbOffset(0);
        s.setOnSeekBarChangeListener((SeekBar$OnSeekBarChangeListener) new i(this));
        if (as.c())
            w.setImageResource(2130837596);
        else
            w.setImageResource(2130837601);
        b = (List) new ArrayList();
    }

    protected void onDestroy() {
        if (E != null) {
            as.b(E);
            E = null;
        }
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }

    public boolean onOptionsItemSelected(MenuItem MenuItem1) {
        switch (MenuItem1.getItemId()) {
            default:
                return super.onOptionsItemSelected(MenuItem1);
            case 44:
                b();
                return true;
        }
    }

    public void onPause() {
        super.onPause();
        l = false;
        m = false;
    }

    public void onResume() {
        super.onResume();
        if (b.size() <= e) {
            m = false;
            f = 1 + f;
            g();
        } else {
            i();
            j();
        }
    }

    public void onUpdateAlbum(F F1) {
        c = F1.a();
        e = -1 + F1.b();
    }
}
