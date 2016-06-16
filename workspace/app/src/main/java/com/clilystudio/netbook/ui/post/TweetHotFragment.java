package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.model.Tweet;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;

import java.util.ArrayList;
import java.util.List;

public class TweetHotFragment extends Fragment {
    static {
        TweetHotFragment.class.getSimpleName();
    }

    private dI a;
    private dH b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private G h;
    private List<Tweet> i = new ArrayList<Tweet>();
    private j j;

    public TweetHotFragment() {
        this.j = new dG(this);
    }

    static /* synthetic */ TextView a(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.g;
    }

    static /* synthetic */ dH a(TweetHotFragment tweetHotFragment, dH dH2) {
        tweetHotFragment.b = dH2;
        return dH2;
    }

    static /* synthetic */ void a(TweetHotFragment tweetHotFragment, HotTweetResult hotTweetResult) {
        tweetHotFragment.a(hotTweetResult);
    }

    static /* synthetic */ dH b(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.b;
    }

    static /* synthetic */ void b(TweetHotFragment tweetHotFragment, HotTweetResult hotTweetResult) {
        TweetCache.delete("zhuishushenqi_hot_user_id", 2);
        TweetCache.save2DB("zhuishushenqi_hot_user_id", 2, new Gson().toJson(hotTweetResult));
    }

    static /* synthetic */ void c(TweetHotFragment tweetHotFragment) {
        tweetHotFragment.a();
    }

    static /* synthetic */ void d(TweetHotFragment tweetHotFragment) {
        tweetHotFragment.g.setVisibility(View.GONE);
        tweetHotFragment.f.setVisibility(View.GONE);
        tweetHotFragment.e.setVisibility(View.GONE);
        tweetHotFragment.c.n();
    }

    static /* synthetic */ List e(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.i;
    }

    static /* synthetic */ PullToRefreshListView f(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.c;
    }

    static /* synthetic */ j g(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.j;
    }

    static /* synthetic */ void h(TweetHotFragment tweetHotFragment) {
        tweetHotFragment.g.setVisibility(View.VISIBLE);
        tweetHotFragment.g.setText("\u70ed\u95e8\u8d44\u6e90\u9700\u8981\u4f60\u7684\u52a0\u5165,\u624d\u4f1a\u66f4\u7cbe\u5f69!");
    }

    static /* synthetic */ G i(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.h;
    }

    static /* synthetic */ View j(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.e;
    }

    static /* synthetic */ dI k(TweetHotFragment tweetHotFragment) {
        return tweetHotFragment.a;
    }

    private void a() {
        this.a = new dI(this, 0);
        this.a.b(new String[0]);
    }

    private void a(HotTweetResult hotTweetResult) {
        TimelineResult$Temp[] arrtimelineResult$Temp = hotTweetResult.getTweets();
        if (arrtimelineResult$Temp.length > 0) {
            for (TimelineResult$Temp timelineResult$Temp : arrtimelineResult$Temp) {
                timelineResult$Temp.getTweet().setUser(timelineResult$Temp.getUser());
                this.i.add(timelineResult$Temp.getTweet());
            }
            this.h.a(this.i);
        }
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        List<TweetCache> list = TweetCache.find("zhuishushenqi_hot_user_id", 2);
        if (list != null && list.size() > 0) {
            TweetCache tweetCache = list.get(0);
            this.a((HotTweetResult) new Gson().fromJson(tweetCache.getContent(), HotTweetResult.class));
        }
        this.a();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_book_topic, viewGroup, false);
        this.f = view.findViewById(R.id.pb_loading);
        this.f.setVisibility(View.GONE);
        this.g = (TextView) view.findViewById(R.id.empty_text);
        this.c = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.d = (ListView) this.c.h();
        this.e = layoutInflater.inflate(R.layout.loading_item, null);
        this.d.addFooterView(this.e);
        if (a.j()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.c.setEnabled(false);
        this.c.setOnRefreshListener(new dE(this));
        this.h = new G(this.getActivity(), false, true);
        this.h.a(this.i);
        this.d.setAdapter(this.h);
        return view;
    }
}
