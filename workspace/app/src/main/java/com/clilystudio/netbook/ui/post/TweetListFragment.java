package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.j;
import com.clilystudio.netbook.model.TopicPost;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class TweetListFragment extends Fragment {
    private dO a;
    private dN b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private j h;
    private List<TopicPost> i = new ArrayList<TopicPost>();
    private com.handmark.pulltorefresh.library.j j;

    public TweetListFragment() {
        this.j = new dM(this);
    }

    static /* synthetic */ TextView a(TweetListFragment tweetListFragment) {
        return tweetListFragment.g;
    }

    static /* synthetic */ dN a(TweetListFragment tweetListFragment, dN dN2) {
        tweetListFragment.b = dN2;
        return dN2;
    }

    static /* synthetic */ dN b(TweetListFragment tweetListFragment) {
        return tweetListFragment.b;
    }

    static /* synthetic */ void c(TweetListFragment tweetListFragment) {
        tweetListFragment.a();
    }

    static /* synthetic */ ListView d(TweetListFragment tweetListFragment) {
        return tweetListFragment.d;
    }

    static /* synthetic */ List e(TweetListFragment tweetListFragment) {
        return tweetListFragment.i;
    }

    static /* synthetic */ void f(TweetListFragment tweetListFragment) {
        tweetListFragment.g.setVisibility(8);
        tweetListFragment.f.setVisibility(8);
        tweetListFragment.e.setVisibility(8);
        tweetListFragment.c.n();
    }

    static /* synthetic */ j g(TweetListFragment tweetListFragment) {
        return tweetListFragment.h;
    }

    static /* synthetic */ PullToRefreshListView h(TweetListFragment tweetListFragment) {
        return tweetListFragment.c;
    }

    static /* synthetic */ com.handmark.pulltorefresh.library.j i(TweetListFragment tweetListFragment) {
        return tweetListFragment.j;
    }

    static /* synthetic */ void j(TweetListFragment tweetListFragment) {
        tweetListFragment.g.setVisibility(0);
        tweetListFragment.g.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    static /* synthetic */ View k(TweetListFragment tweetListFragment) {
        return tweetListFragment.e;
    }

    static /* synthetic */ dO l(TweetListFragment tweetListFragment) {
        return tweetListFragment.a;
    }

    private void a() {
        this.a = new dO(this, 0);
        this.a.b("50bff3ec209793513100001c", "updated");
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903211, viewGroup, false);
        this.f = view.findViewById(2131493085);
        this.g = (TextView) view.findViewById(2131493100);
        this.c = (PullToRefreshListView) view.findViewById(2131493099);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.d = (ListView) this.c.h();
        this.e = layoutInflater.inflate(2130903325, null);
        this.d.addFooterView(this.e);
        if (a.j()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.c.setOnRefreshListener(new dJ(this));
        this.d.setOnItemClickListener(new dL(this));
        this.h = new j(layoutInflater);
        this.d.setAdapter((ListAdapter) ((Object) this.h));
        return view;
    }
}
