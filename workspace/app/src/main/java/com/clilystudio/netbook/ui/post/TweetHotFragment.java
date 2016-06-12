package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class TweetHotFragment extends Fragment {
// Error: Internal #201: 
// The following method may not be correct.

    static {
    }

    private dI a;
    private dH b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private G h;
    private List i = new ArrayList();
    private com.handmark.pulltorefresh.library.j j = new dG(this);

    static TextView a(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.g;
    }

    static dH a(TweetHotFragment TweetHotFragment1, dH dH2) {
        TweetHotFragment1.b = dH2;
        return dH2;
    }

    static void a(TweetHotFragment TweetHotFragment1, HotTweetResult HotTweetResult2) {
        TweetHotFragment1.a(HotTweetResult2);
    }

    static dH b(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.b;
    }

    static void b(TweetHotFragment TweetHotFragment1, HotTweetResult HotTweetResult2) {
        TweetCache.delete("zhuishushenqi_hot_user_id", 2);
        TweetCache.save2DB("zhuishushenqi_hot_user_id", 2, new Gson().toJson(HotTweetResult2));
    }

    static void c(TweetHotFragment TweetHotFragment1) {
        TweetHotFragment1.a();
    }

    static void d(TweetHotFragment TweetHotFragment1) {
        TweetHotFragment1.g.setVisibility(8);
        TweetHotFragment1.f.setVisibility(8);
        TweetHotFragment1.e.setVisibility(8);
        TweetHotFragment1.c.n();
    }

    static List e(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.i;
    }

    static PullToRefreshListView f(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.c;
    }

    static com.handmark.pulltorefresh.library.j g(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.j;
    }

    static void h(TweetHotFragment TweetHotFragment1) {
        TweetHotFragment1.g.setVisibility(0);
        TweetHotFragment1.g.setText((CharSequence) "\u70ED\u95E8\u8D44\u6E90\u9700\u8981\u4F60\u7684\u52A0\u5165,\u624D\u4F1A\u66F4\u7CBE\u5F69!");
    }

    static G i(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.h;
    }

    static View j(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.e;
    }

    static dI k(TweetHotFragment TweetHotFragment1) {
        return TweetHotFragment1.a;
    }

    private void a() {
        a = new dI(this, (byte) 0);
        a.b(new String[0]);
    }

    private void a(HotTweetResult HotTweetResult1) {
        TimelineResult$Temp[] Temp_1darray2 = HotTweetResult1.getTweets();

        if (Temp_1darray2.length > 0) {
            int int3 = Temp_1darray2.length;
            int int4;

            for (int4 = 0; int4 < int3; ++int4) {
                TimelineResult$Temp Temp5 = Temp_1darray2[int4];

                Temp5.getTweet().setUser(Temp5.getUser());
                i.add(Temp5.getTweet());
            }
            h.a(i);
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onActivityCreated(Bundle Bundle1) {
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903211, ViewGroup2, false);

        f = View4.findViewById(2131493085);
        f.setVisibility(8);
        g = (TextView) View4.findViewById(2131493100);
        c = (PullToRefreshListView) View4.findViewById(2131493099);
        c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        d = (ListView) c.h();
        e = LayoutInflater1.inflate(2130903325, null);
        d.addFooterView(e);
        if (com.clilystudio.netbook.hpay100.a.a.j())
            d.setFooterDividersEnabled(false);
        c.setEnabled(false);
        c.setOnRefreshListener((k) new dE(this));
        h = new G((Activity) getActivity(), false, true);
        h.a(i);
        d.setAdapter((ListAdapter) h);
        return View4;
    }
}
