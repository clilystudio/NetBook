package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.event.q;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;

import java.util.ArrayList;
import java.util.List;

public class MyTweetFragment extends Fragment {
    static {
        MyTweetFragment.class.getSimpleName();
    }

    private List<Follower> A;
    private j B;
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
    private List<Tweet> w = new ArrayList<Tweet>();
    private int x;
    private int y;
    private List<Follower> z;

    public MyTweetFragment() {
        this.B = new bT(this);
    }

    static /* synthetic */ int a(MyTweetFragment myTweetFragment, int n) {
        myTweetFragment.y = n;
        return n;
    }

    static /* synthetic */ TextView a(MyTweetFragment myTweetFragment) {
        return myTweetFragment.s;
    }

    static /* synthetic */ bU a(MyTweetFragment myTweetFragment, bU bU2) {
        myTweetFragment.d = bU2;
        return bU2;
    }

    static /* synthetic */ bV a(MyTweetFragment myTweetFragment, bV bV2) {
        myTweetFragment.c = bV2;
        return bV2;
    }

    static /* synthetic */ bW a(MyTweetFragment myTweetFragment, bW bW2) {
        myTweetFragment.b = bW2;
        return bW2;
    }

    static /* synthetic */ List a(MyTweetFragment myTweetFragment, List list) {
        myTweetFragment.z = list;
        return list;
    }

    static /* synthetic */ void a(MyTweetFragment myTweetFragment, TweetsResult tweetsResult) {
        myTweetFragment.a(tweetsResult);
    }

    static /* synthetic */ int b(MyTweetFragment myTweetFragment, int n) {
        myTweetFragment.x = n;
        return n;
    }

    static /* synthetic */ bW b(MyTweetFragment myTweetFragment) {
        return myTweetFragment.b;
    }

    static /* synthetic */ List b(MyTweetFragment myTweetFragment, List list) {
        myTweetFragment.A = list;
        return list;
    }

    static /* synthetic */ void b(MyTweetFragment myTweetFragment, TweetsResult tweetsResult) {
        User user = am.e().getUser();
        TweetCache.delete(user.getId(), 3);
        String string = new Gson().toJson(tweetsResult);
        TweetCache.save2DB(user.getId(), 3, string);
    }

    static /* synthetic */ void c(MyTweetFragment myTweetFragment) {
        myTweetFragment.b();
    }

    static /* synthetic */ void d(MyTweetFragment myTweetFragment) {
        int n = myTweetFragment.x;
        if (myTweetFragment.z != null) {
            n = myTweetFragment.z.size();
        }
        myTweetFragment.j.setText("" + n);
    }

    static /* synthetic */ void e(MyTweetFragment myTweetFragment) {
        int n = myTweetFragment.y;
        if (myTweetFragment.A != null) {
            n = myTweetFragment.A.size();
        }
        myTweetFragment.k.setText("" + n);
    }

    static /* synthetic */ List f(MyTweetFragment myTweetFragment) {
        return myTweetFragment.A;
    }

    static /* synthetic */ int g(MyTweetFragment myTweetFragment) {
        return myTweetFragment.y;
    }

    static /* synthetic */ bU h(MyTweetFragment myTweetFragment) {
        return myTweetFragment.d;
    }

    static /* synthetic */ void i(MyTweetFragment myTweetFragment) {
        Intent intent = new Intent(myTweetFragment.getActivity(), FollowerListActivity.class);
        intent.putExtra("type", "TYPE_FOLLOWERS");
        List<Follower> list = myTweetFragment.A;
        Follower[] arrfollower = null;
        if (list != null) {
            arrfollower = new Follower[myTweetFragment.A.size()];
            myTweetFragment.A.toArray(arrfollower);
        }
        intent.putExtra("follows", arrfollower);
        myTweetFragment.startActivity(intent);
    }

    static /* synthetic */ List j(MyTweetFragment myTweetFragment) {
        return myTweetFragment.z;
    }

    static /* synthetic */ int k(MyTweetFragment myTweetFragment) {
        return myTweetFragment.x;
    }

    static /* synthetic */ bV l(MyTweetFragment myTweetFragment) {
        return myTweetFragment.c;
    }

    static /* synthetic */ void m(MyTweetFragment myTweetFragment) {
        Intent intent = new Intent(myTweetFragment.getActivity(), FollowerListActivity.class);
        intent.putExtra("type", "TYPE_FOLLOWINGS");
        List<Follower> list = myTweetFragment.z;
        Follower[] arrfollower = null;
        if (list != null) {
            arrfollower = new Follower[myTweetFragment.z.size()];
            myTweetFragment.z.toArray(arrfollower);
        }
        intent.putExtra("follows", arrfollower);
        myTweetFragment.startActivity(intent);
    }

    static /* synthetic */ SmartImageView n(MyTweetFragment myTweetFragment) {
        return myTweetFragment.g;
    }

    static /* synthetic */ ImageView o(MyTweetFragment myTweetFragment) {
        return myTweetFragment.h;
    }

    static /* synthetic */ void p(MyTweetFragment myTweetFragment) {
        myTweetFragment.s.setVisibility(View.GONE);
        myTweetFragment.r.setVisibility(View.GONE);
        myTweetFragment.q.setVisibility(View.GONE);
        myTweetFragment.e.n();
    }

    static /* synthetic */ List q(MyTweetFragment myTweetFragment) {
        return myTweetFragment.w;
    }

    static /* synthetic */ PullToRefreshListView r(MyTweetFragment myTweetFragment) {
        return myTweetFragment.e;
    }

    static /* synthetic */ j s(MyTweetFragment myTweetFragment) {
        return myTweetFragment.B;
    }

    static /* synthetic */ void t(MyTweetFragment myTweetFragment) {
        myTweetFragment.s.setVisibility(View.VISIBLE);
        myTweetFragment.s.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    static /* synthetic */ G u(MyTweetFragment myTweetFragment) {
        return myTweetFragment.v;
    }

    static /* synthetic */ View v(MyTweetFragment myTweetFragment) {
        return myTweetFragment.q;
    }

    static /* synthetic */ bX w(MyTweetFragment myTweetFragment) {
        return myTweetFragment.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a() {
        this.g = (SmartImageView) this.f.findViewById(R.id.siv_avater);
        this.h = (ImageView) this.f.findViewById(R.id.iv_sign);
        this.i = (TextView) this.f.findViewById(R.id.tv_username);
        this.j = (TextView) this.f.findViewById(R.id.tv_following);
        this.k = (TextView) this.f.findViewById(R.id.tv_fans);
        this.n = (Button) this.f.findViewById(R.id.btn_edit);
        Account account = am.e();
        if (account != null) {
            User user = account.getUser();
            this.g.setImageUrl(user.getFullAvatar());
            this.i.setText(user.getNickname());
            bY bY2 = new bY(this, new bN(this));
            String[] arrstring = new String[]{user.getId()};
            bY2.b(arrstring);
            if (user.isDoyan()) {
                this.h.setVisibility(View.VISIBLE);
                this.h.setImageResource(R.drawable.user_avatar_verify_doyen);
            } else if (user.isOfficial()) {
                this.h.setVisibility(View.VISIBLE);
                this.h.setImageResource(R.drawable.user_avatar_verify_official);
            } else {
                this.h.setVisibility(View.GONE);
            }
            this.n.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    MyTweetFragment.this.startActivity(ModifyUserInfoActivity.a(MyTweetFragment.this.getActivity(), -1));
                }
            });
            this.m = this.f.findViewById(R.id.ll_followers_container);
            this.l = this.f.findViewById(R.id.ll_following_container);
            this.m.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (MyTweetFragment.f(MyTweetFragment.this) == null && MyTweetFragment.g(MyTweetFragment.this) != 0) {
                        if (MyTweetFragment.h(MyTweetFragment.this) != null) {
                            MyTweetFragment.h(MyTweetFragment.this).cancel(true);
                        }
                        MyTweetFragment.a(MyTweetFragment.this, new bU(MyTweetFragment.this, new Runnable() {
                            @Override
                            public void run() {
                                MyTweetFragment.i(MyTweetFragment.this);
                            }
                        }));
                        bU bU2 = MyTweetFragment.h(MyTweetFragment.this);
                        String[] arrstring = new String[]{am.e().getUser().getId()};
                        bU2.b(arrstring);
                        return;
                    }
                    MyTweetFragment.i(MyTweetFragment.this);
                }
            });
            this.l.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (MyTweetFragment.j(MyTweetFragment.this) == null && MyTweetFragment.k(MyTweetFragment.this) != 0) {
                        if (MyTweetFragment.l(MyTweetFragment.this) != null) {
                            MyTweetFragment.l(MyTweetFragment.this).cancel(true);
                        }
                        MyTweetFragment.a(MyTweetFragment.this, new bV(MyTweetFragment.this, new Runnable() {
                            @Override
                            public void run() {
                                MyTweetFragment.m(MyTweetFragment.this);
                            }
                        }));
                        bV bV2 = MyTweetFragment.l(MyTweetFragment.this);
                        String[] arrstring = new String[]{am.e().getUser().getId()};
                        bV2.b(arrstring);
                        return;
                    }
                    MyTweetFragment.m(MyTweetFragment.this);
                }
            });
        }
    }

    private void a(TweetsResult tweetsResult) {
        Tweet[] arrtweet = tweetsResult.getTweets();
        if (arrtweet.length > 0) {
            for (Tweet tweet : arrtweet) {
                tweet.setUser(am.e().getUser());
                this.w.add(tweet);
            }
            this.v.a(this.w);
        }
    }

    private void b() {
        if (am.e() == null) {
            this.t.setVisibility(View.VISIBLE);
            this.o.setVisibility(4);
            return;
        }
        this.t.setVisibility(4);
        this.o.setVisibility(View.VISIBLE);
        this.a = new bX(this, 0);
        this.a.b(new String[0]);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        List<TweetCache> list;
        super.onActivityCreated(bundle);
        if (am.e() != null && (list = TweetCache.find(am.e().getUser().getId(), 3)) != null && list.size() > 0) {
            TweetCache tweetCache = list.get(0);
            this.a((TweetsResult) new Gson().fromJson(tweetCache.getContent(), TweetsResult.class));
        }
        this.b();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().register(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_book_topic, viewGroup, false);
        this.o = (RelativeLayout) view.findViewById(R.id.rl_container);
        this.t = (RelativeLayout) view.findViewById(R.id.fl_not_login_cover);
        this.u = (TextView) view.findViewById(R.id.tv_login);
        this.u.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MyTweetFragment.this.startActivity(AuthLoginActivity.a(MyTweetFragment.this.getActivity()));
            }
        });
        this.r = view.findViewById(R.id.pb_loading);
        this.s = (TextView) view.findViewById(R.id.empty_text);
        this.e = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.e.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.p = (ListView) this.e.h();
        this.f = layoutInflater.inflate(R.layout.layout_mytweet_head, null);
        this.f.findViewById(R.id.divider);
        this.a();
        this.p.addHeaderView(this.f);
        this.q = layoutInflater.inflate(R.layout.loading_item, null);
        this.p.addFooterView(this.q);
        if (a.j()) {
            this.p.setFooterDividersEnabled(false);
        }
        this.e.setOnRefreshListener(new bL(this));
        this.v = new G(this.getActivity(), true, false);
        this.v.a(this.w);
        this.p.setAdapter(this.v);
        return view;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i.a().unregister(this);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        if (this.d != null) {
            this.d.cancel(true);
        }
        if (this.c != null) {
            this.c.cancel(true);
        }
    }

    @l
    public void onFollowChangeEvent(q q2) {
    }

    @l
    public void onLoginedEvent(t t2) {
        this.b();
        this.a();
    }
}
