package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.TimelineResult$Names;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;

import java.util.ArrayList;
import java.util.List;

public class TweetTimelineFragment extends Fragment {
    static {
        TweetTimelineFragment.class.getSimpleName();
    }

    private eb a;
    private ea b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private RelativeLayout h;
    private TextView i;
    private G j;
    private List<Tweet> k = new ArrayList<Tweet>();
    private j l;

    public TweetTimelineFragment() {
        this.l = new dZ(this);
    }

    static /* synthetic */ TextView a(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.g;
    }

    static /* synthetic */ ea a(TweetTimelineFragment tweetTimelineFragment, ea ea2) {
        tweetTimelineFragment.b = ea2;
        return ea2;
    }

    static /* synthetic */ List a(TweetTimelineFragment tweetTimelineFragment, List list, TimelineResult timelineResult) {
        return tweetTimelineFragment.a(list, timelineResult);
    }

    static /* synthetic */ void a(TweetTimelineFragment tweetTimelineFragment, TimelineResult timelineResult) {
        tweetTimelineFragment.a(timelineResult);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean a(Tweet tweet) {
        User user = am.e().getUser();
        if (tweet.getNames() == null) {
            return false;
        }
        String[] arrstring = tweet.getNames();
        int n = arrstring.length;
        int n2 = 0;
        while (n2 < n) {
            if (arrstring[n2].equals(user.getNickname())) {
                return true;
            }
            ++n2;
        }
        return false;
    }

    private static boolean a(List<Tweet> list, Tweet tweet) {
        for (Tweet tweet2 : list) {
            if (tweet.isRetween() && tweet.getRefTweet().equals(tweet2.getRefTweet())) {
                return true;
            }
            if (tweet.isRetween() || !tweet.equals(tweet2.getRefTweet())) continue;
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String[] a(TimelineResult$Names[] arrtimelineResult$Names, String string) {
        if (arrtimelineResult$Names == null) {
            return null;
        }
        int n = arrtimelineResult$Names.length;
        int n2 = 0;
        while (n2 < n) {
            TimelineResult$Names timelineResult$Names = arrtimelineResult$Names[n2];
            if (timelineResult$Names.getId().equals(string)) {
                return timelineResult$Names.getNames();
            }
            ++n2;
        }
        return null;
    }

    static /* synthetic */ ea b(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.b;
    }

    static /* synthetic */ void b(TweetTimelineFragment tweetTimelineFragment, TimelineResult timelineResult) {
        User user = am.e().getUser();
        TweetCache.delete(user.getId(), 1);
        String string = new Gson().toJson(timelineResult);
        TweetCache.save2DB(user.getId(), 1, string);
        RetweenRecord.clear(user.getId());
        tweetTimelineFragment.b(timelineResult);
    }

    static /* synthetic */ void c(TweetTimelineFragment tweetTimelineFragment) {
        tweetTimelineFragment.a();
    }

    static /* synthetic */ void c(TweetTimelineFragment tweetTimelineFragment, TimelineResult timelineResult) {
        tweetTimelineFragment.b(timelineResult);
    }

    static /* synthetic */ void d(TweetTimelineFragment tweetTimelineFragment) {
        tweetTimelineFragment.c();
    }

    static /* synthetic */ PullToRefreshListView e(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.c;
    }

    static /* synthetic */ j f(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.l;
    }

    static /* synthetic */ void g(TweetTimelineFragment tweetTimelineFragment) {
        tweetTimelineFragment.b();
    }

    static /* synthetic */ List h(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.k;
    }

    static /* synthetic */ G i(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.j;
    }

    static /* synthetic */ View j(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.e;
    }

    static /* synthetic */ eb k(TweetTimelineFragment tweetTimelineFragment) {
        return tweetTimelineFragment.a;
    }

    private List<Tweet> a(List<Tweet> list, TimelineResult timelineResult) {
        ArrayList<Tweet> arrayList = new ArrayList<Tweet>();
        TimelineResult$Temp[] arrtimelineResult$Temp = timelineResult.getTweets();
        int n = arrtimelineResult$Temp.length;
        for (int i = 0; i < n; ++i) {
            arrayList.add(arrtimelineResult$Temp[i].getTweet());
        }
        for (Tweet tweet : arrayList) {
            if (TweetTimelineFragment.a(list, tweet)) continue;
            if (tweet.isRetween()) {
                tweet.names = TweetTimelineFragment.a(timelineResult.getRetweetNames(), tweet.getRefTweet().get_id());
            }
            list.add(tweet);
        }
        return list;
    }

    private void a() {
        if (am.e() != null) {
            this.h.setVisibility(8);
            Account account = am.e();
            eb eb2 = this.a = new eb(this, 0);
            String[] arrstring = new String[]{account.getToken(), am.e().getUser().getId()};
            eb2.b(arrstring);
            return;
        }
        this.c();
        this.b();
    }

    private void a(TimelineResult timelineResult) {
        TimelineResult$Temp[] arrtimelineResult$Temp = timelineResult.getTweets();
        if (arrtimelineResult$Temp.length > 0) {
            this.k.clear();
            for (TimelineResult$Temp timelineResult$Temp : arrtimelineResult$Temp) {
                timelineResult$Temp.getTweet().setUser(timelineResult$Temp.getUser());
            }
            this.k = this.a(new ArrayList<Tweet>(), timelineResult);
            this.j.a(this.k);
        }
    }

    private void b() {
        if (am.e() == null) {
            this.h.setVisibility(0);
            return;
        }
        this.g.setVisibility(0);
        this.g.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    private void b(TimelineResult timelineResult) {
        TimelineResult$Temp[] arrtimelineResult$Temp = timelineResult.getTweets();
        User user = am.e().getUser();
        ArrayList<RetweenRecord> arrayList = new ArrayList<RetweenRecord>();
        for (TimelineResult$Temp timelineResult$Temp : arrtimelineResult$Temp) {
            if (!timelineResult$Temp.getTweet().isRetween() || !TweetTimelineFragment.a(timelineResult$Temp.getTweet())) continue;
            RetweenRecord retweenRecord = new RetweenRecord();
            retweenRecord.setUserId(user.getId());
            retweenRecord.setTweetId(timelineResult$Temp.getTweet().getRefTweet().get_id());
            arrayList.add(retweenRecord);
        }
        RetweenRecord.save2DB(arrayList);
    }

    private void c() {
        this.g.setVisibility(8);
        this.f.setVisibility(8);
        this.e.setVisibility(8);
        this.c.n();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        List<TweetCache> list;
        super.onActivityCreated(bundle);
        Account account = am.e();
        if (account != null && (list = TweetCache.find(account.getUser().getId(), 1)) != null && list.size() > 0) {
            TweetCache tweetCache = list.get(0);
            this.a((TimelineResult) new Gson().fromJson(tweetCache.getContent(), TimelineResult.class));
        }
        this.a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903211, viewGroup, false);
        this.f = view.findViewById(2131493085);
        this.f.setVisibility(8);
        this.g = (TextView) view.findViewById(2131493100);
        this.c = (PullToRefreshListView) view.findViewById(2131493099);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.h = (RelativeLayout) view.findViewById(2131493438);
        this.i = (TextView) view.findViewById(2131493589);
        this.i.setOnClickListener(new dW(this));
        this.d = (ListView) this.c.h();
        this.e = layoutInflater.inflate(2130903325, null);
        this.d.addFooterView(this.e);
        if (a.j()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.c.setEnabled(false);
        this.c.setOnRefreshListener(new dX(this));
        this.j = new G(this.getActivity(), false, false);
        this.j.a(this.k);
        this.d.setAdapter(this.j);
        return view;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onLogin(t t2) {
        this.a();
    }
}
