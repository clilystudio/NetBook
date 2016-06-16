package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.SeekBar;
import android.widget.TextView;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.event.F;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AudioBookPlayActivity extends BaseActivity implements View.OnClickListener {
    private n A;
    private int B = 0;
    private int C = 100;
    private av D;
    private IXmPlayerStatusListener E;
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

    public AudioBookPlayActivity() {
        this.D = new j(this);
        this.E = new m(this);
    }

    static /* synthetic */ int a(AudioBookPlayActivity audioBookPlayActivity, int n2) {
        audioBookPlayActivity.f = 1;
        return 1;
    }

    static /* synthetic */ Track a(AudioBookPlayActivity audioBookPlayActivity, Track track) {
        audioBookPlayActivity.h = track;
        return track;
    }

    static /* synthetic */ IXmPlayerStatusListener a(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.E;
    }

    static /* synthetic */ void a(AudioBookPlayActivity audioBookPlayActivity, TextView textView, int n2) {
        audioBookPlayActivity.a(textView, n2);
    }

    static /* synthetic */ boolean a(AudioBookPlayActivity audioBookPlayActivity, boolean bl) {
        audioBookPlayActivity.l = bl;
        return bl;
    }

    static /* synthetic */ int b(AudioBookPlayActivity audioBookPlayActivity, int n2) {
        audioBookPlayActivity.e = n2;
        return n2;
    }

    static /* synthetic */ as b(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.z;
    }

    static /* synthetic */ void b(AudioBookPlayActivity audioBookPlayActivity, boolean bl) {
        audioBookPlayActivity.a(true);
    }

    static /* synthetic */ void c(AudioBookPlayActivity audioBookPlayActivity) {
        audioBookPlayActivity.b();
    }

    static /* synthetic */ void c(AudioBookPlayActivity audioBookPlayActivity, int n2) {
        audioBookPlayActivity.a(n2);
    }

    static /* synthetic */ boolean c(AudioBookPlayActivity audioBookPlayActivity, boolean bl) {
        audioBookPlayActivity.m = false;
        return false;
    }

    static /* synthetic */ long d(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.c;
    }

    static /* synthetic */ void d(AudioBookPlayActivity audioBookPlayActivity, int n2) {
        AudioRecord.updateTrack(String.valueOf(audioBookPlayActivity.c), n2);
        com.clilystudio.netbook.event.i.a().register(new F(audioBookPlayActivity.c, n2));
    }

    static /* synthetic */ boolean d(AudioBookPlayActivity audioBookPlayActivity, boolean bl) {
        audioBookPlayActivity.k = bl;
        return bl;
    }

    static /* synthetic */ boolean e(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.j;
    }

    static /* synthetic */ boolean e(AudioBookPlayActivity audioBookPlayActivity, boolean bl) {
        audioBookPlayActivity.j = bl;
        return bl;
    }

    static /* synthetic */ int f(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.i;
    }

    static /* synthetic */ TextView g(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.t;
    }

    static /* synthetic */ void h(AudioBookPlayActivity audioBookPlayActivity) {
        if (audioBookPlayActivity.l && audioBookPlayActivity.b.size() < audioBookPlayActivity.g) {
            e.a((Context) audioBookPlayActivity, (String) "\u6b63\u5728\u83b7\u53d6\u66f4\u591a\u7ae0\u8282");
        }
        if (!audioBookPlayActivity.m && audioBookPlayActivity.g > 0 && audioBookPlayActivity.b.size() < audioBookPlayActivity.g) {
            audioBookPlayActivity.f = 1 + audioBookPlayActivity.f;
            audioBookPlayActivity.g();
            return;
        }
        audioBookPlayActivity.l = false;
    }

    static /* synthetic */ List i(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.b;
    }

    static /* synthetic */ void j(AudioBookPlayActivity audioBookPlayActivity) {
        audioBookPlayActivity.i();
    }

    static /* synthetic */ int k(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.e;
    }

    static /* synthetic */ void l(AudioBookPlayActivity audioBookPlayActivity) {
        audioBookPlayActivity.f();
    }

    static /* synthetic */ int m(AudioBookPlayActivity audioBookPlayActivity) {
        int n2 = audioBookPlayActivity.f;
        audioBookPlayActivity.f = n2 + 1;
        return n2;
    }

    static /* synthetic */ void n(AudioBookPlayActivity audioBookPlayActivity) {
        audioBookPlayActivity.g();
    }

    static /* synthetic */ boolean o(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.l;
    }

    static /* synthetic */ void p(AudioBookPlayActivity audioBookPlayActivity) {
        audioBookPlayActivity.j();
    }

    static /* synthetic */ int q(AudioBookPlayActivity audioBookPlayActivity) {
        int n2 = audioBookPlayActivity.f;
        audioBookPlayActivity.f = n2 - 1;
        return n2;
    }

    static /* synthetic */ int r(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.f;
    }

    static /* synthetic */ ScrollLoadListView s(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.r;
    }

    static /* synthetic */ ImageButton t(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.w;
    }

    static /* synthetic */ boolean u(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.k;
    }

    static /* synthetic */ TextView v(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.u;
    }

    static /* synthetic */ SeekBar w(AudioBookPlayActivity audioBookPlayActivity) {
        return audioBookPlayActivity.s;
    }

    static /* synthetic */ int x(AudioBookPlayActivity audioBookPlayActivity) {
        int n2 = audioBookPlayActivity.e;
        audioBookPlayActivity.e = n2 + 1;
        return n2;
    }

    static /* synthetic */ void y(AudioBookPlayActivity audioBookPlayActivity) {
        audioBookPlayActivity.h();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n2) {
        this.B = n2 / this.C * this.C;
        int n3 = this.B + this.C > this.b.size() ? this.b.size() : this.B + this.C;
        this.z.a(this.b.subList(this.B, n3), n2 - this.B);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(TextView textView, int n2) {
        int n3 = n2 / 60;
        int n4 = n2 % 60;
        StringBuilder stringBuilder = new StringBuilder();
        String string = n3 < 10 ? "0" + n3 : Integer.valueOf(n3);
        StringBuilder stringBuilder2 = stringBuilder.append((Object) string).append(":");
        String string2 = n4 < 10 ? "0" + n4 : Integer.valueOf(n4);
        textView.setText(stringBuilder2.append((Object) string2).toString());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        if (this.e == 0 && bl) {
            this.v.setEnabled(false);
        } else {
            this.v.setEnabled(bl);
        }
        this.w.setEnabled(bl);
        if (this.b != null && this.e == -1 + this.b.size() && bl) {
            this.x.setEnabled(false);
            return;
        }
        this.x.setEnabled(bl);
    }

    private void b() {
        Intent intent = new Intent(this, HomeActivity.class);
        intent.setFlags(67108864);
        if (HomeActivity.b() != null) {
            HomeActivity.b().f();
        }
        this.startActivity(intent);
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void f() {
        if (this.h != null) {
            this.i = this.h.getDuration();
            this.q.setText(this.h.getTrackTitle());
            this.a(this.u, this.i);
        }
        this.a(this.t, 0);
        if (this.e == 0) {
            this.v.setEnabled(false);
        } else if (this.b.size() > this.e) {
            this.v.setEnabled(true);
        }
        if (this.b != null && this.e == -1 + this.b.size()) {
            this.x.setEnabled(false);
            return;
        } else {
            if (this.b.size() <= this.e) return;
            {
                this.x.setEnabled(true);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void g() {
        if (this.m) {
            return;
        }
        this.m = true;
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("album_id", "" + this.c);
        hashMap.put("sort", "asc");
        hashMap.put("page", "" + this.f);
        try {
            this.a.setDefaultPagesize(this.C);
        } catch (XimalayaException var5_2) {
            var5_2.printStackTrace();
        }
        CommonRequest.getTracks(hashMap, new k(this));
    }

    private void h() {
        if (this.e >= this.B + this.C) {
            this.a(this.e);
            return;
        }
        as.g();
    }

    private void i() {
        if (this.A != null) {
            this.A.notifyDataSetChanged();
        }
    }

    private void j() {
        new Handler().post((Runnable) ((Object) new l(this)));
    }

    public final void a(TrackList trackList) {
        this.y.setVisibility(View.GONE);
        this.b = trackList.getTracks();
        this.g = trackList.getTotalCount();
        this.o.setImageUrl(trackList.getCoverUrlMiddle());
        this.p.setText(trackList.getAlbumTitle());
        if (this.b != null && this.b.size() > 0) {
            this.A = new n(this, (Context) this);
            this.r.setAdapter((ListAdapter) ((Object) this.A));
            if (this.b.size() > this.e) {
                this.a(true);
                this.h = this.b.get(this.e);
            }
        }
    }

    @Override
    public void onBackPressed() {
        this.b();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.audiobook_playpre: {
                if (this.b != null && this.e == 0) {
                    e.a((Context) this, (String) "\u5df2\u7ecf\u662f\u7b2c\u4e00\u9996");
                    return;
                }
                this.a(false);
                this.e = -1 + this.e;
                this.h = this.b.get(this.e);
                this.f();
                if (this.e < this.B) {
                    this.a(this.e);
                    return;
                }
                as.f();
                return;
            }
            case R.id.audiobook_play_pause: {
                if (as.c()) {
                    as.h();
                    return;
                }
                this.z.d();
                return;
            }
            case R.id.audiobook_playnext:
        }
        if (this.b != null && this.e >= -1 + this.b.size()) {
            e.a((Context) this, (String) "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9996");
            return;
        }
        this.a(false);
        this.e = 1 + this.e;
        this.h = this.b.get(this.e);
        this.f();
        this.h();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_audiobook_play);
        com.clilystudio.netbook.event.i.a().a(this);
        this.a("", R.string.exit_autio_book, (aa) ((Object) new f(this)));
        this.a = as.b();
        as.a(this.E);
        if (this.getIntent() != null) {
            if (this.getIntent().hasExtra("ALBUM_ID")) {
                this.c = this.getIntent().getLongExtra("ALBUM_ID", 0);
            }
            if (this.getIntent().hasExtra("INDEX_OF_PLAYLIST")) {
                this.e = -1 + this.getIntent().getIntExtra("INDEX_OF_PLAYLIST", 1);
                try {
                    this.a.setDefaultPagesize(this.C);
                } catch (XimalayaException var4_4) {
                    var4_4.printStackTrace();
                }
            }
        }
        this.r = (ScrollLoadListView) this.findViewById(R.id.audiobook_listview);
        this.r.setOnLastItemListener(this.D);
        View view = this.getLayoutInflater().inflate(R.layout.audiobook_listview_header, null);
        this.r.addHeaderView(view);
        View view2 = this.getLayoutInflater().inflate(R.layout.audiobook_listview_footer, null);
        this.r.addFooterView(view2);
        this.y = this.findViewById(R.id.audiobook_loading);
        this.n = this.findViewById(R.id.audio_album_info);
        this.o = (CornerImageView) this.findViewById(R.id.audio_album_cover);
        this.p = (TextView) this.findViewById(R.id.audio_album_title);
        this.q = (TextView) this.findViewById(R.id.audio_chapter_title);
        this.s = (SeekBar) this.findViewById(R.id.audiobook_seekbar);
        this.t = (TextView) this.findViewById(R.id.audiobook_playtime);
        this.u = (TextView) this.findViewById(R.id.audiobook_totaltime);
        this.v = (ImageButton) this.findViewById(R.id.audiobook_playpre);
        this.w = (ImageButton) this.findViewById(R.id.audiobook_play_pause);
        this.x = (ImageButton) this.findViewById(R.id.audiobook_playnext);
        this.v.setOnClickListener(this);
        this.w.setOnClickListener(this);
        this.x.setOnClickListener(this);
        this.findViewById(R.id.play_layout).setOnTouchListener((View.OnTouchListener) ((Object) new g(this)));
        this.n.setClickable(true);
        this.n.setOnClickListener((View.OnClickListener) ((Object) new h(this)));
        this.a(false);
        this.s.setThumbOffset(0);
        this.s.setOnSeekBarChangeListener((SeekBar.OnSeekBarChangeListener) ((Object) new i(this)));
        if (as.c()) {
            this.w.setImageResource(R.drawable.audiobook_pause_selector);
        } else {
            this.w.setImageResource(R.drawable.audiobook_play_selector);
        }
        this.b = new ArrayList<Track>();
    }

    @Override
    protected void onDestroy() {
        if (this.E != null) {
            as.b(this.E);
            this.E = null;
        }
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 16908332:
        }
        this.b();
        return true;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.l = false;
        this.m = false;
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.b.size() <= this.e) {
            this.m = false;
            this.f = 1 + this.f;
            this.g();
            return;
        }
        this.i();
        this.j();
    }

    @com.squareup.a.l
    public void onUpdateAlbum(F f2) {
        this.c = f2.a();
        this.e = -1 + f2.b();
    }
}
