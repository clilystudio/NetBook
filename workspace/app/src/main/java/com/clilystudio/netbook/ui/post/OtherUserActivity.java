package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class OtherUserActivity extends BaseActivity {

    private ck A;
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
    private String r;
    private String s;
    private int t;
    private int u;
    private List v;
    private List w;
    private Follower x;
    private cj z;
    private List q = new ArrayList();
    private int y = 0;
    private com.handmark.pulltorefresh.library.j B = new ch(this);

    static int a(OtherUserActivity OtherUserActivity1, int int2) {
        OtherUserActivity1.y = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1) {
    }

    static TextView a(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.o;
    }

    static cj a(OtherUserActivity OtherUserActivity1, cj cj2) {
        OtherUserActivity1.z = cj2;
        return cj2;
    }

    static ck a(OtherUserActivity OtherUserActivity1, ck ck2) {
        OtherUserActivity1.A = ck2;
        return ck2;
    }

    static cl a(OtherUserActivity OtherUserActivity1, cl cl2) {
        OtherUserActivity1.a = cl2;
        return cl2;
    }

    static List a(OtherUserActivity OtherUserActivity1, List List2) {
        OtherUserActivity1.v = List2;
        return List2;
    }

    static int b(OtherUserActivity OtherUserActivity1, int int2) {
        OtherUserActivity1.t = int2;
        return int2;
    }

    static cl b(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.a;
    }

    static List b(OtherUserActivity OtherUserActivity1, List List2) {
        OtherUserActivity1.w = List2;
        return List2;
    }

    static int c(OtherUserActivity OtherUserActivity1, int int2) {
        OtherUserActivity1.u = int2;
        return int2;
    }

    static void c(OtherUserActivity OtherUserActivity1) {
        OtherUserActivity1.g();
    }

    static void d(OtherUserActivity OtherUserActivity1) {
        switch (OtherUserActivity1.y) {
            case 2:
                OtherUserActivity1.startActivity(ModifyUserInfoActivity.a((Context) OtherUserActivity1, -1L));
                return;
            case 0:
                if (am.a((Activity) OtherUserActivity1) != null) {
                    User User9;
                    cp cp10;
                    String[] String_1darray11;

                    OtherUserActivity1.y = 1;
                    User9 = am.e().getUser();
                    if (OtherUserActivity1.x == null) {
                        OtherUserActivity1.x = new Follower();
                        OtherUserActivity1.x.set_id(User9.getId());
                        OtherUserActivity1.x.setAvatar(User9.getAvatar());
                        OtherUserActivity1.x.setFollowings(1);
                        OtherUserActivity1.x.setNickname(User9.getNickname());
                        OtherUserActivity1.x.setTweets(0);
                    }
                    if (OtherUserActivity1.w != null)
                        OtherUserActivity1.w.add(OtherUserActivity1.x);
                    OtherUserActivity1.t = 1 + OtherUserActivity1.t;
                    OtherUserActivity1.b();
                    OtherUserActivity1.f();
                    com.clilystudio.netbook.util.e.a((Activity) OtherUserActivity1, "\t\t\u5173\u6CE8\u6210\u529F\t\t");
                    cp10 = new cp(OtherUserActivity1, (byte) 0);
                    String_1darray11 = new String[2];
                    String_1darray11[0] = am.e().getToken();
                    String_1darray11[1] = OtherUserActivity1.r;
                    cp10.b(String_1darray11);
                    return;
                }
                break;
            case 1:
                if (am.a((Activity) OtherUserActivity1) != null) {
                    User User2;
                    Object Object4;
                    co co5;
                    String[] String_1darray6;

                    OtherUserActivity1.y = 0;
                    User2 = am.e().getUser();
                    label_127:
                    {
                        int int3;

                        for (int3 = 0; OtherUserActivity1.w != null && int3 < OtherUserActivity1.w.size(); ++int3) {
                            Object4 = (Follower) OtherUserActivity1.w.get(int3);
                            if (((Follower) Object4).get_id().equals(User2.getId()))
                                break label_127;
                        }
                        Object4 = null;
                    }
                    if (Object4 != null) {
                        OtherUserActivity1.x = (Follower) Object4;
                        OtherUserActivity1.w.remove(Object4);
                    }
                    OtherUserActivity1.t = -1 + OtherUserActivity1.t;
                    OtherUserActivity1.b();
                    OtherUserActivity1.f();
                    com.clilystudio.netbook.util.e.a((Activity) OtherUserActivity1, "\t\t\u53D6\u6D88\u5173\u6CE8\u6210\u529F\t\t");
                    co5 = new co(OtherUserActivity1, (byte) 0);
                    String_1darray6 = new String[2];
                    String_1darray6[0] = am.e().getToken();
                    String_1darray6[1] = OtherUserActivity1.r;
                    co5.b(String_1darray6);
                    return;
                }
                break;
            default:
                break;
        }
    }

    static void e(OtherUserActivity OtherUserActivity1) {
        OtherUserActivity1.b();
    }

    static void f(OtherUserActivity OtherUserActivity1) {
        int int2 = OtherUserActivity1.u;

        if (OtherUserActivity1.v != null)
            int2 = OtherUserActivity1.v.size();
        OtherUserActivity1.i.setText((CharSequence) new StringBuilder().append(int2).toString());
    }

    static List g(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.v;
    }

    static int h(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.u;
    }

    static ck i(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.A;
    }

    static void j(OtherUserActivity OtherUserActivity1) {
    }

    static String k(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.r;
    }

    static List l(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.w;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static int m(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.t;
    }

    static cj n(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.z;
    }

    static void o(OtherUserActivity OtherUserActivity1) {
    }

    static View p(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.m;
    }

    static cm q(OtherUserActivity OtherUserActivity1) {
        return null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static List r(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.q;
    }

    static SmartImageView s(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.f;
    }

    static ImageView t(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.g;
    }

    static void u(OtherUserActivity OtherUserActivity1) {
        OtherUserActivity1.o.setVisibility(8);
        OtherUserActivity1.n.setVisibility(8);
        OtherUserActivity1.m.setVisibility(8);
        OtherUserActivity1.c.n();
    }

    static G v(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.p;
    }

    static PullToRefreshListView w(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.c;
    }

    static com.handmark.pulltorefresh.library.j x(OtherUserActivity OtherUserActivity1) {
        return OtherUserActivity1.B;
    }

    static void y(OtherUserActivity OtherUserActivity1) {
        OtherUserActivity1.o.setVisibility(0);
        OtherUserActivity1.o.setText((CharSequence) "TA\u53EF\u80FD\u8FD8\u4E0D\u77E5\u52A8\u6001\u5427!");
    }

    static void z(OtherUserActivity OtherUserActivity1) {
        OtherUserActivity1.f();
    }

    private void b() {
        int int1 = t;

        if (w != null)
            int1 = w.size();
        j.setText((CharSequence) new StringBuilder().append(int1).toString());
    }

    private void f() {
        switch (y) {
            default:
                return;
            case 2:
                k.setText((CharSequence) "\u7F16\u8F91");
                return;
            case 0:
                k.setText((CharSequence) "\u5173\u6CE8");
                return;
            case 1:
                k.setText((CharSequence) "\u53D6\u6D88\u5173\u6CE8");
                return;
        }
    }

    private void g() {
        cm cm1 = new cm(this, (byte) 0);
        String[] String_1darray2 = new String[1];

        String_1darray2[0] = r;
        cm1.b(String_1darray2);
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        com.clilystudio.netbook.event.i.a().a(this);
        setContentView(2130903211);
        b = LayoutInflater.from((Context) this);
        r = getIntent().getExtras().getString("USER_ID");
        s = getIntent().getExtras().getString("USER_NAME");
        n = findViewById(2131493085);
        o = (TextView) findViewById(2131493100);
        c = (PullToRefreshListView) findViewById(2131493099);
        c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        l = (ListView) c.h();
        e = b.inflate(2130903253, null);
        l.addHeaderView(e);
        m = b.inflate(2130903325, null);
        l.addFooterView(m);
        if (com.clilystudio.netbook.hpay100.a.a.j())
            l.setFooterDividersEnabled(false);
        b("\u8BE6\u60C5");
        if (am.e() != null) {
            if (am.e().getUser().getId().equals(r))
                y = 2;
            else {
                ci ci2 = new ci(this, (byte) 0);
                String[] String_1darray3 = new String[2];

                String_1darray3[0] = am.e().getUser().getId();
                String_1darray3[1] = r;
                ci2.execute(String_1darray3);
            }
        } else
            y = 0;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (z != null)
            z.cancel(true);
        if (A != null)
            A.cancel(true);
        com.clilystudio.netbook.event.i.a().b(this);
    }

    public void onLoginedEvent(com.clilystudio.netbook.event.t t1) {
        ci ci2 = new ci(this, (byte) 0);
        String[] String_1darray3 = new String[2];

        String_1darray3[0] = am.e().getUser().getId();
        String_1darray3[1] = r;
        ci2.execute(String_1darray3);
    }

    protected void onStart() {
        cn cn1;
        String[] String_1darray2;

        super.onStart();
        f = (SmartImageView) e.findViewById(2131493591);
        h = (TextView) e.findViewById(2131493593);
        g = (ImageView) e.findViewById(2131493594);
        i = (TextView) e.findViewById(2131493596);
        j = (TextView) e.findViewById(2131493599);
        k = (Button) e.findViewById(2131493592);
        h.setText((CharSequence) s);
        f();
        k.setOnClickListener((View$OnClickListener) new cb(this));
        i.setOnClickListener((View$OnClickListener) new cd(this));
        j.setOnClickListener((View$OnClickListener) new cf(this));
        cn1 = new cn(this, (Runnable) new cc(this));
        String_1darray2 = new String[1];
        String_1darray2[0] = r;
        cn1.b(String_1darray2);
        c.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new bZ(this));
        p = new G((Activity) this, false, false);
        p.a(q);
        l.setAdapter((ListAdapter) p);
        g();
    }
}
