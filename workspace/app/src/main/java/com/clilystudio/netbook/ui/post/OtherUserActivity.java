package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;

import java.util.ArrayList;
import java.util.List;

public class OtherUserActivity extends BaseActivity {
    private ck A;
    private j B;
    private cl a;
    private LayoutInflater b;
    private PullToRefreshListView c;
    private View e;
    private SmartImageView f;
    private ImageView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private Button k;
    private ListView l;
    private View m;
    private View n;
    private TextView o;
    private G p;
    private List<Tweet> q = new ArrayList<Tweet>();
    private String r;
    private String s;
    private int t;
    private int u;
    private List<Follower> v;
    private List<Follower> w;
    private Follower x;
    private int y = 0;
    private cj z;

    public OtherUserActivity() {
        this.B = new ch(this);
    }

    static /* synthetic */ int a(OtherUserActivity otherUserActivity, int n) {
        otherUserActivity.y = n;
        return n;
    }

    public static Intent a(Context context) {
        return new d().a(context, OtherUserActivity.class).a();
    }

    static /* synthetic */ TextView a(OtherUserActivity otherUserActivity) {
        return otherUserActivity.o;
    }

    static /* synthetic */ cj a(OtherUserActivity otherUserActivity, cj cj2) {
        otherUserActivity.z = cj2;
        return cj2;
    }

    static /* synthetic */ ck a(OtherUserActivity otherUserActivity, ck ck2) {
        otherUserActivity.A = ck2;
        return ck2;
    }

    static /* synthetic */ cl a(OtherUserActivity otherUserActivity, cl cl2) {
        otherUserActivity.a = cl2;
        return cl2;
    }

    static /* synthetic */ List a(OtherUserActivity otherUserActivity, List list) {
        otherUserActivity.v = list;
        return list;
    }

    static /* synthetic */ int b(OtherUserActivity otherUserActivity, int n) {
        otherUserActivity.t = n;
        return n;
    }

    static /* synthetic */ cl b(OtherUserActivity otherUserActivity) {
        return otherUserActivity.a;
    }

    static /* synthetic */ List b(OtherUserActivity otherUserActivity, List list) {
        otherUserActivity.w = list;
        return list;
    }

    static /* synthetic */ int c(OtherUserActivity otherUserActivity, int n) {
        otherUserActivity.u = n;
        return n;
    }

    static /* synthetic */ void c(OtherUserActivity otherUserActivity) {
        otherUserActivity.g();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void d(OtherUserActivity otherUserActivity) {
        Follower follower;
        block13:
        {
            User user;
            switch (otherUserActivity.y) {
                case 2: {
                    otherUserActivity.startActivity(ModifyUserInfoActivity.a(otherUserActivity, -1));
                    return;
                }
                case 0: {
                    if (am.a((Activity) otherUserActivity) == null) return;
                    {
                        otherUserActivity.y = 1;
                        User user2 = am.e().getUser();
                        if (otherUserActivity.x == null) {
                            otherUserActivity.x = new Follower();
                            otherUserActivity.x.set_id(user2.getId());
                            otherUserActivity.x.setAvatar(user2.getAvatar());
                            otherUserActivity.x.setFollowings(1);
                            otherUserActivity.x.setNickname(user2.getNickname());
                            otherUserActivity.x.setTweets(0);
                        }
                        if (otherUserActivity.w != null) {
                            otherUserActivity.w.add(otherUserActivity.x);
                        }
                        otherUserActivity.t = 1 + otherUserActivity.t;
                        otherUserActivity.b();
                        otherUserActivity.f();
                        e.a((Activity) otherUserActivity, (String) "\t\t\u5173\u6ce8\u6210\u529f\t\t");
                        cp cp2 = new cp(otherUserActivity, 0);
                        Object[] arrobject = new String[]{am.e().getToken(), otherUserActivity.r};
                        cp2.b(arrobject);
                        return;
                    }
                }
                default: {
                    return;
                }
                case 1:
            }
            if (am.a((Activity) otherUserActivity) == null) return;
            {
                otherUserActivity.y = 0;
                user = am.e().getUser();
            }
            for (int i = 0; otherUserActivity.w != null && i < otherUserActivity.w.size(); ++i) {
                follower = otherUserActivity.w.get(i);
                if (!follower.get_id().equals(user.getId())) {
                    continue;
                }
                break block13;
            }
            follower = null;
        }
        if (follower != null) {
            otherUserActivity.x = follower;
            otherUserActivity.w.remove(follower);
        }
        otherUserActivity.t = -1 + otherUserActivity.t;
        otherUserActivity.b();
        otherUserActivity.f();
        e.a((Activity) otherUserActivity, (String) "\t\t\u53d6\u6d88\u5173\u6ce8\u6210\u529f\t\t");
        co co2 = new co(otherUserActivity, 0);
        Object[] arrobject = new String[]{am.e().getToken(), otherUserActivity.r};
        co2.b(arrobject);
    }

    static /* synthetic */ void e(OtherUserActivity otherUserActivity) {
        otherUserActivity.b();
    }

    static /* synthetic */ void f(OtherUserActivity otherUserActivity) {
        int n = otherUserActivity.u;
        if (otherUserActivity.v != null) {
            n = otherUserActivity.v.size();
        }
        otherUserActivity.i.setText("" + n);
    }

    static /* synthetic */ List g(OtherUserActivity otherUserActivity) {
        return otherUserActivity.v;
    }

    static /* synthetic */ int h(OtherUserActivity otherUserActivity) {
        return otherUserActivity.u;
    }

    static /* synthetic */ ck i(OtherUserActivity otherUserActivity) {
        return otherUserActivity.A;
    }

    static /* synthetic */ void j(OtherUserActivity otherUserActivity) {
        Intent intent = new Intent(otherUserActivity, FollowerListActivity.class);
        intent.putExtra("type", "TYPE_FOLLOWINGS");
        List<Follower> list = otherUserActivity.v;
        Follower[] arrfollower = null;
        if (list != null) {
            arrfollower = new Follower[otherUserActivity.v.size()];
            otherUserActivity.v.toArray(arrfollower);
        }
        intent.putExtra("follows", arrfollower);
        otherUserActivity.startActivity(intent);
    }

    static /* synthetic */ String k(OtherUserActivity otherUserActivity) {
        return otherUserActivity.r;
    }

    static /* synthetic */ List l(OtherUserActivity otherUserActivity) {
        return otherUserActivity.w;
    }

    static /* synthetic */ int m(OtherUserActivity otherUserActivity) {
        return otherUserActivity.t;
    }

    static /* synthetic */ cj n(OtherUserActivity otherUserActivity) {
        return otherUserActivity.z;
    }

    static /* synthetic */ void o(OtherUserActivity otherUserActivity) {
        Intent intent = new Intent(otherUserActivity, FollowerListActivity.class);
        intent.putExtra("type", "TYPE_FOLLOWERS");
        List<Follower> list = otherUserActivity.w;
        Follower[] arrfollower = null;
        if (list != null) {
            arrfollower = new Follower[otherUserActivity.w.size()];
            otherUserActivity.w.toArray(arrfollower);
        }
        intent.putExtra("follows", arrfollower);
        otherUserActivity.startActivity(intent);
    }

    static /* synthetic */ View p(OtherUserActivity otherUserActivity) {
        return otherUserActivity.m;
    }

    static /* synthetic */ cm q(OtherUserActivity otherUserActivity) {
        return null;
    }

    static /* synthetic */ List r(OtherUserActivity otherUserActivity) {
        return otherUserActivity.q;
    }

    static /* synthetic */ SmartImageView s(OtherUserActivity otherUserActivity) {
        return otherUserActivity.f;
    }

    static /* synthetic */ ImageView t(OtherUserActivity otherUserActivity) {
        return otherUserActivity.g;
    }

    static /* synthetic */ void u(OtherUserActivity otherUserActivity) {
        otherUserActivity.o.setVisibility(View.GONE);
        otherUserActivity.n.setVisibility(View.GONE);
        otherUserActivity.m.setVisibility(View.GONE);
        otherUserActivity.c.n();
    }

    static /* synthetic */ G v(OtherUserActivity otherUserActivity) {
        return otherUserActivity.p;
    }

    static /* synthetic */ PullToRefreshListView w(OtherUserActivity otherUserActivity) {
        return otherUserActivity.c;
    }

    static /* synthetic */ j x(OtherUserActivity otherUserActivity) {
        return otherUserActivity.B;
    }

    static /* synthetic */ void y(OtherUserActivity otherUserActivity) {
        otherUserActivity.o.setVisibility(View.VISIBLE);
        otherUserActivity.o.setText("TA\u53ef\u80fd\u8fd8\u4e0d\u77e5\u52a8\u6001\u5427!");
    }

    static /* synthetic */ void z(OtherUserActivity otherUserActivity) {
        otherUserActivity.f();
    }

    private void b() {
        int n = this.t;
        if (this.w != null) {
            n = this.w.size();
        }
        this.j.setText("" + n);
    }

    private void f() {
        switch (this.y) {
            default: {
                return;
            }
            case 2: {
                this.k.setText("\u7f16\u8f91");
                return;
            }
            case 0: {
                this.k.setText("\u5173\u6ce8");
                return;
            }
            case 1:
        }
        this.k.setText("\u53d6\u6d88\u5173\u6ce8");
    }

    private void g() {
        cm cm2 = new cm(this, 0);
        Object[] arrobject = new String[]{this.r};
        cm2.b(arrobject);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
        this.setContentView(R.layout.fragment_book_topic);
        this.b = LayoutInflater.from(this);
        this.r = this.getIntent().getExtras().getString("USER_ID");
        this.s = this.getIntent().getExtras().getString("USER_NAME");
        this.n = this.findViewById(R.id.pb_loading);
        this.o = (TextView) this.findViewById(R.id.empty_text);
        this.c = (PullToRefreshListView) this.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.l = (ListView) this.c.h();
        this.e = this.b.inflate(R.layout.layout_mytweet_head, null);
        this.l.addHeaderView(this.e);
        this.m = this.b.inflate(R.layout.loading_item, null);
        this.l.addFooterView(this.m);
        if (a.j()) {
            this.l.setFooterDividersEnabled(false);
        }
        this.b("\u8be6\u60c5");
        if (am.e() != null) {
            if (am.e().getUser().getId().equals(this.r)) {
                this.y = 2;
                return;
            }
            ci ci2 = new ci(this, 0);
            String[] arrstring = new String[]{am.e().getUser().getId(), this.r};
            ci2.execute(arrstring);
            return;
        }
        this.y = 0;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (this.z != null) {
            this.z.cancel(true);
        }
        if (this.A != null) {
            this.A.cancel(true);
        }
        i.a().b(this);
    }

    @l
    public void onLoginedEvent(t t2) {
        ci ci2 = new ci(this, 0);
        String[] arrstring = new String[]{am.e().getUser().getId(), this.r};
        ci2.execute(arrstring);
    }

    @Override
    protected void onStart() {
        super.onStart();
        this.f = (SmartImageView) this.e.findViewById(R.id.siv_avater);
        this.h = (TextView) this.e.findViewById(R.id.tv_username);
        this.g = (ImageView) this.e.findViewById(R.id.iv_sign);
        this.i = (TextView) this.e.findViewById(R.id.tv_following);
        this.j = (TextView) this.e.findViewById(R.id.tv_fans);
        this.k = (Button) this.e.findViewById(R.id.btn_edit);
        this.h.setText(this.s);
        this.f();
        this.k.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OtherUserActivity.d(OtherUserActivity.this);
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (OtherUserActivity.g(OtherUserActivity.this) == null && OtherUserActivity.h(OtherUserActivity.this) != 0) {
                    if (OtherUserActivity.i(OtherUserActivity.this) != null) {
                        OtherUserActivity.i(OtherUserActivity.this).cancel(true);
                    }
                    OtherUserActivity.a(OtherUserActivity.this, new ck(OtherUserActivity.this, new Runnable() {
                        @Override
                        public void run() {
                            OtherUserActivity.j(OtherUserActivity.this);
                        }
                    }));
                    ck ck2 = OtherUserActivity.i(OtherUserActivity.this);
                    String[] arrstring = new String[]{OtherUserActivity.k(OtherUserActivity.this)};
                    ck2.b(arrstring);
                    return;
                }
                OtherUserActivity.j(OtherUserActivity.this);
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (OtherUserActivity.l(OtherUserActivity.this) == null && OtherUserActivity.m(OtherUserActivity.this) != 0) {
                    if (OtherUserActivity.n(OtherUserActivity.this) != null) {
                        OtherUserActivity.n(OtherUserActivity.this).cancel(true);
                    }
                    OtherUserActivity.a(OtherUserActivity.this, new cj(OtherUserActivity.this, new Runnable() {
                        @Override
                        public void run() {
                            OtherUserActivity.o(OtherUserActivity.this);
                        }
                    }));
                    cj cj2 = OtherUserActivity.n(OtherUserActivity.this);
                    String[] arrstring = new String[]{OtherUserActivity.k(OtherUserActivity.this)};
                    cj2.b(arrstring);
                    return;
                }
                OtherUserActivity.o(OtherUserActivity.this);
            }
        });
        cn cn2 = new cn(this, (Runnable) ((Object) new cc(this)));
        Object[] arrobject = new String[]{this.r};
        cn2.b(arrobject);
        this.c.setOnRefreshListener(new bZ(this));
        this.p = new G(this, false, false);
        this.p.a(this.q);
        this.l.setAdapter(this.p);
        this.g();
    }
}
