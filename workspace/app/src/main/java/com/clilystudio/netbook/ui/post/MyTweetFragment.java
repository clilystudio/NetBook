package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class MyTweetFragment extends Fragment {
// Error: Internal #201: 
// The following method may not be correct.

    static {
    }

    private List A;
    private bX a;
    private bW b;
    private bV c;
    private bU d;
    private PullToRefreshListView e;
    private View f;
    private SmartImageView g;
    private ImageView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private View l;
    private View m;
    private Button n;
    private RelativeLayout o;
    private ListView p;
    private View q;
    private View r;
    private TextView s;
    private RelativeLayout t;
    private TextView u;
    private G v;
    private int x;
    private int y;
    private List z;
    private List w = new ArrayList();
    private com.handmark.pulltorefresh.library.j B = new bT(this);

    static int a(MyTweetFragment MyTweetFragment1, int int2) {
        MyTweetFragment1.y = int2;
        return int2;
    }

    static TextView a(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.s;
    }

    static bU a(MyTweetFragment MyTweetFragment1, bU bU2) {
        MyTweetFragment1.d = bU2;
        return bU2;
    }

    static bV a(MyTweetFragment MyTweetFragment1, bV bV2) {
        MyTweetFragment1.c = bV2;
        return bV2;
    }

    static bW a(MyTweetFragment MyTweetFragment1, bW bW2) {
        MyTweetFragment1.b = bW2;
        return bW2;
    }

    static List a(MyTweetFragment MyTweetFragment1, List List2) {
        MyTweetFragment1.z = List2;
        return List2;
    }

    static void a(MyTweetFragment MyTweetFragment1, TweetsResult TweetsResult2) {
        MyTweetFragment1.a(TweetsResult2);
    }

    static int b(MyTweetFragment MyTweetFragment1, int int2) {
        MyTweetFragment1.x = int2;
        return int2;
    }

    static bW b(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.b;
    }

    static List b(MyTweetFragment MyTweetFragment1, List List2) {
        MyTweetFragment1.A = List2;
        return List2;
    }

    static void b(MyTweetFragment MyTweetFragment1, TweetsResult TweetsResult2) {
        User User3 = am.e().getUser();
        String String4;

        TweetCache.delete(User3.getId(), 3);
        String4 = new Gson().toJson(TweetsResult2);
        TweetCache.save2DB(User3.getId(), 3, String4);
    }

    static void c(MyTweetFragment MyTweetFragment1) {
        MyTweetFragment1.b();
    }

    static void d(MyTweetFragment MyTweetFragment1) {
        int int2 = MyTweetFragment1.x;

        if (MyTweetFragment1.z != null)
            int2 = MyTweetFragment1.z.size();
        MyTweetFragment1.j.setText((CharSequence) new StringBuilder().append(int2).toString());
    }

    static void e(MyTweetFragment MyTweetFragment1) {
        int int2 = MyTweetFragment1.y;

        if (MyTweetFragment1.A != null)
            int2 = MyTweetFragment1.A.size();
        MyTweetFragment1.k.setText((CharSequence) new StringBuilder().append(int2).toString());
    }

    static List f(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.A;
    }

    static int g(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.y;
    }

    static bU h(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.d;
    }

    static void i(MyTweetFragment MyTweetFragment1) {
    }

    static List j(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.z;
    }

    static int k(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.x;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static bV l(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.c;
    }

    static void m(MyTweetFragment MyTweetFragment1) {
    }

    static SmartImageView n(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.g;
    }

    static ImageView o(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.h;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void p(MyTweetFragment MyTweetFragment1) {
        MyTweetFragment1.s.setVisibility(8);
        MyTweetFragment1.r.setVisibility(8);
        MyTweetFragment1.q.setVisibility(8);
        MyTweetFragment1.e.n();
    }

    static List q(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.w;
    }

    static PullToRefreshListView r(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.e;
    }

    static com.handmark.pulltorefresh.library.j s(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.B;
    }

    static void t(MyTweetFragment MyTweetFragment1) {
        MyTweetFragment1.s.setVisibility(0);
        MyTweetFragment1.s.setText((CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u8BDD\u9898\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427");
    }

    static G u(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.v;
    }

    static View v(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.q;
    }

    static bX w(MyTweetFragment MyTweetFragment1) {
        return MyTweetFragment1.a;
    }

    private void a() {
        Account Account1;

        g = (SmartImageView) f.findViewById(2131493591);
        h = (ImageView) f.findViewById(2131493594);
        i = (TextView) f.findViewById(2131493593);
        j = (TextView) f.findViewById(2131493596);
        k = (TextView) f.findViewById(2131493599);
        n = (Button) f.findViewById(2131493592);
        Account1 = am.e();
        if (Account1 != null) {
            User User2 = Account1.getUser();
            bY bY3;
            String[] String_1darray4;

            g.setImageUrl(User2.getFullAvatar());
            i.setText((CharSequence) User2.getNickname());
            bY3 = new bY(this, (Runnable) new bN(this));
            String_1darray4 = new String[1];
            String_1darray4[0] = User2.getId();
            bY3.b(String_1darray4);
            if (User2.isDoyan()) {
                h.setVisibility(0);
                h.setImageResource(2130838229);
            } else if (User2.isOfficial()) {
                h.setVisibility(0);
                h.setImageResource(2130838231);
            } else
                h.setVisibility(8);
            n.setOnClickListener((View$OnClickListener) new bO(this));
            m = f.findViewById(2131493598);
            l = f.findViewById(2131493595);
            m.setOnClickListener((View$OnClickListener) new bP(this));
            l.setOnClickListener((View$OnClickListener) new bR(this));
        }
    }

    private void a(TweetsResult TweetsResult1) {
        Object[] Object_1darray2 = TweetsResult1.getTweets();

        if (Object_1darray2.length > 0) {
            int int3 = Object_1darray2.length;
            int int4;

            for (int4 = 0; int4 < int3; ++int4) {
                Object Object5 = Object_1darray2[int4];

                ((Tweet) Object5).setUser(am.e().getUser());
                w.add(Object5);
            }
            v.a(w);
        }
    }

    private void b() {
        if (am.e() == null) {
            t.setVisibility(0);
            o.setVisibility(4);
        } else {
            t.setVisibility(4);
            o.setVisibility(0);
            a = new bX(this, (byte) 0);
            a.b(new String[0]);
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onActivityCreated(Bundle Bundle1) {
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        com.clilystudio.netbook.event.i.a().a(this);
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903211, ViewGroup2, false);

        o = (RelativeLayout) View4.findViewById(2131493436);
        t = (RelativeLayout) View4.findViewById(2131493438);
        u = (TextView) View4.findViewById(2131493589);
        u.setOnClickListener((View$OnClickListener) new bK(this));
        r = View4.findViewById(2131493085);
        s = (TextView) View4.findViewById(2131493100);
        e = (PullToRefreshListView) View4.findViewById(2131493099);
        e.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        p = (ListView) e.h();
        f = LayoutInflater1.inflate(2130903253, null);
        f.findViewById(2131493098);
        a();
        p.addHeaderView(f);
        q = LayoutInflater1.inflate(2130903325, null);
        p.addFooterView(q);
        if (com.clilystudio.netbook.hpay100.a.a.j())
            p.setFooterDividersEnabled(false);
        e.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new bL(this));
        v = new G((Activity) getActivity(), true, false);
        v.a(w);
        p.setAdapter((ListAdapter) v);
        return View4;
    }

    public void onDestroy() {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (d != null)
            d.cancel(true);
        if (c != null)
            c.cancel(true);
    }

    public void onFollowChangeEvent(com.clilystudio.netbook.event.q q1) {
    }

    public void onLoginedEvent(com.clilystudio.netbook.event.t t1) {
        b();
        a();
    }
}
