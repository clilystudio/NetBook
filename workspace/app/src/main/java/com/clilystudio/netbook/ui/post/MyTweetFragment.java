package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
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
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.squareup.a.b;

import java.util.ArrayList;
import java.util.List;

public class MyTweetFragment extends Fragment {
    static {
        MyTweetFragment.class.getSimpleName();
    }

    private List<Follower> A;
    private j B = new bT(this);
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
    private List<Tweet> w = new ArrayList();
    private int x;
    private int y;
    private List<Follower> z;

    private void a() {
        this.g = ((SmartImageView) this.f.findViewById(2131493591));
        this.h = ((ImageView) this.f.findViewById(2131493594));
        this.i = ((TextView) this.f.findViewById(2131493593));
        this.j = ((TextView) this.f.findViewById(2131493596));
        this.k = ((TextView) this.f.findViewById(2131493599));
        this.n = ((Button) this.f.findViewById(2131493592));
        Account localAccount = am.e();
        User localUser;
        if (localAccount != null) {
            localUser = localAccount.getUser();
            this.g.setImageUrl(localUser.getFullAvatar());
            this.i.setText(localUser.getNickname());
            bY localbY = new bY(this, new bN(this));
            String[] arrayOfString = new String[1];
            arrayOfString[0] = localUser.getId();
            localbY.b(arrayOfString);
            if (!localUser.isDoyan())
                break label265;
            this.h.setVisibility(0);
            this.h.setImageResource(2130838229);
        }
        while (true) {
            this.n.setOnClickListener(new bO(this));
            this.m = this.f.findViewById(2131493598);
            this.l = this.f.findViewById(2131493595);
            this.m.setOnClickListener(new bP(this));
            this.l.setOnClickListener(new bR(this));
            return;
            label265:
            if (localUser.isOfficial()) {
                this.h.setVisibility(0);
                this.h.setImageResource(2130838231);
                continue;
            }
            this.h.setVisibility(8);
        }
    }

    private void a(TweetsResult paramTweetsResult) {
        Tweet[] arrayOfTweet = paramTweetsResult.getTweets();
        if (arrayOfTweet.length > 0) {
            int i1 = arrayOfTweet.length;
            for (int i2 = 0; i2 < i1; i2++) {
                Tweet localTweet = arrayOfTweet[i2];
                localTweet.setUser(am.e().getUser());
                this.w.add(localTweet);
            }
            this.v.a(this.w);
        }
    }

    private void b() {
        if (am.e() == null) {
            this.t.setVisibility(0);
            this.o.setVisibility(4);
            return;
        }
        this.t.setVisibility(4);
        this.o.setVisibility(0);
        this.a = new bX(this, 0);
        this.a.b(new String[0]);
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        if (am.e() != null) {
            List localList = TweetCache.find(am.e().getUser().getId(), 3);
            if ((localList != null) && (localList.size() > 0)) {
                TweetCache localTweetCache = (TweetCache) localList.get(0);
                a((TweetsResult) new Gson().fromJson(localTweetCache.getContent(), TweetsResult.class));
            }
        }
        b();
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        i.a().a(this);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903211, paramViewGroup, false);
        this.o = ((RelativeLayout) localView.findViewById(2131493436));
        this.t = ((RelativeLayout) localView.findViewById(2131493438));
        this.u = ((TextView) localView.findViewById(2131493589));
        this.u.setOnClickListener(new bK(this));
        this.r = localView.findViewById(2131493085);
        this.s = ((TextView) localView.findViewById(2131493100));
        this.e = ((PullToRefreshListView) localView.findViewById(2131493099));
        this.e.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.p = ((ListView) this.e.h());
        this.f = paramLayoutInflater.inflate(2130903253, null);
        this.f.findViewById(2131493098);
        a();
        this.p.addHeaderView(this.f);
        this.q = paramLayoutInflater.inflate(2130903325, null);
        this.p.addFooterView(this.q);
        if (a.j())
            this.p.setFooterDividersEnabled(false);
        this.e.setOnRefreshListener(new bL(this));
        this.v = new G(getActivity(), true, false);
        this.v.a(this.w);
        this.p.setAdapter(this.v);
        return localView;
    }

    public void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.d != null)
            this.d.cancel(true);
        if (this.c != null)
            this.c.cancel(true);
    }

    @l
    public void onFollowChangeEvent(q paramq) {
    }

    @l
    public void onLoginedEvent(t paramt) {
        b();
        a();
    }
}

