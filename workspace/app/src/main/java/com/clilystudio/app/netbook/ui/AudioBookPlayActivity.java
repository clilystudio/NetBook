package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;

import com.clilystudio.app.netbook.event.F;
import com.clilystudio.app.netbook.ui.home.HomeActivity;
import com.clilystudio.app.netbook.util.as;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.av;
import com.squareup.a.b;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AudioBookPlayActivity extends BaseActivity
        implements View.OnClickListener {
    private n A;
    private int B = 0;
    private int C = 100;
    private av D = new j(this);
    private IXmPlayerStatusListener E = new m(this);
    private CommonRequest a;
    private List<Track> b;
    private long c;
    private int e;
    private int f;
    private int g;
    private Track h;
    private int i;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
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
    private as z = as.a();

    private void a(int paramInt) {
        this.B = (paramInt / this.C * this.C);
        if (this.B + this.C > this.b.size()) ;
        for (int i1 = this.b.size(); ; i1 = this.B + this.C) {
            this.z.a(this.b.subList(this.B, i1), paramInt - this.B);
            return;
        }
    }

    private void a(TextView paramTextView, int paramInt) {
        int i1 = paramInt / 60;
        int i2 = paramInt % 60;
        StringBuilder localStringBuilder1 = new StringBuilder();
        Object localObject1;
        StringBuilder localStringBuilder2;
        if (i1 < 10) {
            localObject1 = "0" + i1;
            localStringBuilder2 = localStringBuilder1.append(localObject1).append(":");
            if (i2 >= 10)
                break label108;
        }
        label108:
        for (Object localObject2 = "0" + i2; ; localObject2 = Integer.valueOf(i2)) {
            paramTextView.setText(localObject2);
            return;
            localObject1 = Integer.valueOf(i1);
            break;
        }
    }

    private void a(boolean paramBoolean) {
        if ((this.e == 0) && (paramBoolean))
            this.v.setEnabled(false);
        while (true) {
            this.w.setEnabled(paramBoolean);
            if ((this.b == null) || (this.e != -1 + this.b.size()) || (!paramBoolean))
                break;
            this.x.setEnabled(false);
            return;
            this.v.setEnabled(paramBoolean);
        }
        this.x.setEnabled(paramBoolean);
    }

    private void b() {
        Intent localIntent = new Intent(this, HomeActivity.class);
        localIntent.setFlags(67108864);
        if (HomeActivity.b_getInstance() != null)
            HomeActivity.b_getInstance().f();
        startActivity(localIntent);
        finish();
    }

    private void f() {
        if (this.h != null) {
            this.i = this.h.getDuration();
            this.q.setText(this.h.getTrackTitle());
            a(this.u, this.i);
        }
        a(this.t, 0);
        if (this.e == 0)
            this.v.setEnabled(false);
        do
            while ((this.b != null) && (this.e == -1 + this.b.size())) {
                this.x.setEnabled(false);
                return;
                if (this.b.size() > this.e)
                    this.v.setEnabled(true);
            }
        while (this.b.size() <= this.e);
        this.x.setEnabled(true);
    }

    private void g() {
        if (this.m)
            return;
        this.m = true;
        HashMap localHashMap = new HashMap();
        localHashMap.put("album_id", this.c);
        localHashMap.put("sort", "asc");
        localHashMap.put("page", this.f);
        try {
            this.a.setDefaultPagesize(this.C);
            CommonRequest.getTracks(localHashMap, new k(this));
            return;
        } catch (XimalayaException localXimalayaException) {
            while (true)
                localXimalayaException.printStackTrace();
        }
    }

    private void h() {
        if (this.e >= this.B + this.C) {
            a(this.e);
            return;
        }
        as.g();
    }

    private void i() {
        if (this.A != null)
            this.A.notifyDataSetChanged();
    }

    private void j() {
        new Handler().post(new l(this));
    }

    public final void a(TrackList paramTrackList) {
        this.y.setVisibility(8);
        this.b = paramTrackList.getTracks();
        this.g = paramTrackList.getTotalCount();
        this.o.setImageUrl(paramTrackList.getCoverUrlMiddle());
        this.p.setText(paramTrackList.getAlbumTitle());
        if ((this.b != null) && (this.b.size() > 0)) {
            this.A = new n(this, this);
            this.r.setAdapter(this.A);
            if (this.b.size() > this.e) {
                a(true);
                this.h = ((Track) this.b.get(this.e));
            }
        }
    }

    public void onBackPressed() {
        b();
    }

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131493305:
                if ((this.b != null) && (this.e == 0)) {
                    e.a(this, "已经是第一首");
                    return;
                }
                a(false);
                this.e = (-1 + this.e);
                this.h = ((Track) this.b.get(this.e));
                f();
                if (this.e < this.B) {
                    a(this.e);
                    return;
                }
                as.f();
                return;
            case 2131493306:
                if (as.c()) {
                    as.h();
                    return;
                }
                this.z.d();
                return;
            case 2131493307:
        }
        if ((this.b != null) && (this.e >= -1 + this.b.size())) {
            e.a(this, "已经是最后一首");
            return;
        }
        a(false);
        this.e = (1 + this.e);
        this.h = ((Track) this.b.get(this.e));
        f();
        h();
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(2130903082);
        com.clilystudio.app.netbook.event.i.a().a(this);
        a_initContentView("", 2131034372, new f(this));
        this.a = as.b();
        as.a(this.E);
        if (getIntent() != null) {
            if (getIntent().hasExtra("ALBUM_ID"))
                this.c = getIntent().getLongExtra("ALBUM_ID", 0L);
            if (getIntent().hasExtra("INDEX_OF_PLAYLIST"))
                this.e = (-1 + getIntent().getIntExtra("INDEX_OF_PLAYLIST", 1));
        }
        try {
            this.a.setDefaultPagesize(this.C);
            this.r = ((ScrollLoadListView) findViewById(2131493091));
            this.r.setOnLastItemListener(this.D);
            View localView1 = getLayoutInflater().inflate(2130903152, null);
            this.r.addHeaderView(localView1);
            View localView2 = getLayoutInflater().inflate(2130903151, null);
            this.r.addFooterView(localView2);
            this.y = findViewById(2131493092);
            this.n = findViewById(2131493087);
            this.o = ((CornerImageView) findViewById(2131493088));
            this.p = ((TextView) findViewById(2131493089));
            this.q = ((TextView) findViewById(2131493090));
            this.s = ((SeekBar) findViewById(2131493301));
            this.t = ((TextView) findViewById(2131493303));
            this.u = ((TextView) findViewById(2131493304));
            this.v = ((ImageButton) findViewById(2131493305));
            this.w = ((ImageButton) findViewById(2131493306));
            this.x = ((ImageButton) findViewById(2131493307));
            this.v.setOnClickListener(this);
            this.w.setOnClickListener(this);
            this.x.setOnClickListener(this);
            findViewById(2131493302).setOnTouchListener(new g(this));
            this.n.setClickable(true);
            this.n.setOnClickListener(new h(this));
            a(false);
            this.s.setThumbOffset(0);
            this.s.setOnSeekBarChangeListener(new i(this));
            if (as.c()) {
                this.w.setImageResource(2130837596);
                this.b = new ArrayList();
                return;
            }
        } catch (XimalayaException localXimalayaException) {
            while (true) {
                localXimalayaException.printStackTrace();
                continue;
                this.w.setImageResource(2130837601);
            }
        }
    }

    protected void onDestroy() {
        if (this.E != null) {
            as.b(this.E);
            this.E = null;
        }
        super.onDestroy();
        com.clilystudio.app.netbook.event.i.a().b(this);
    }

    public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
        switch (paramMenuItem.getItemId()) {
            default:
                return super.onOptionsItemSelected(paramMenuItem);
            case 16908332:
        }
        b();
        return true;
    }

    public void onPause() {
        super.onPause();
        this.l = false;
        this.m = false;
    }

    public void onResume() {
        super.onResume();
        if (this.b.size() <= this.e) {
            this.m = false;
            this.f = (1 + this.f);
            g();
            return;
        }
        i();
        j();
    }

    @com.squareup.a.l
    public void onUpdateAlbum(F paramF) {
        this.c = paramF.a();
        this.e = (-1 + paramF.b());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AudioBookPlayActivity
 * JD-Core Version:    0.6.2
 */