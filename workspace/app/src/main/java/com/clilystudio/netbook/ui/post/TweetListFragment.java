package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.*;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.PostFlag;
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
    private com.clilystudio.netbook.util.W<TopicPost> h;
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
        tweetListFragment.g.setVisibility(View.GONE);
        tweetListFragment.f.setVisibility(View.GONE);
        tweetListFragment.e.setVisibility(View.GONE);
        tweetListFragment.c.n();
    }

    static /* synthetic */ W<TopicPost> g(TweetListFragment tweetListFragment) {
        return tweetListFragment.h;
    }

    static /* synthetic */ PullToRefreshListView h(TweetListFragment tweetListFragment) {
        return tweetListFragment.c;
    }

    static /* synthetic */ com.handmark.pulltorefresh.library.j i(TweetListFragment tweetListFragment) {
        return tweetListFragment.j;
    }

    static /* synthetic */ void j(TweetListFragment tweetListFragment) {
        tweetListFragment.g.setVisibility(View.VISIBLE);
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
        View view = layoutInflater.inflate(R.layout.fragment_book_topic, viewGroup, false);
        this.f = view.findViewById(R.id.pb_loading);
        this.g = (TextView) view.findViewById(R.id.empty_text);
        this.c = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.d = (ListView) this.c.h();
        this.e = layoutInflater.inflate(R.layout.loading_item, null);
        this.d.addFooterView(this.e);
        if (a.j()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.c.setOnRefreshListener(new dJ(this));
        this.d.setOnItemClickListener(new dL(this));
        this.h = new W<TopicPost>(layoutInflater, R.layout.list_item_post){

            @Override
            protected void a(int var1, final TopicPost topicPost) {
                final Author author = topicPost.getAuthor();
                if (am.m(getContext())) {
                    ((SmartImageView) this.a(0, SmartImageView.class)).setImageResource(R.drawable.avatar_default);
                } else {
                    ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
                    ((SmartImageView) this.a(0, SmartImageView.class)).setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            v.getContext().startActivity(com.clilystudio.netbook.util.e.a(v.getContext(),topicPost.getAuthor()));
                        }
                    });
                }
                this.a(1, author.getNickname());
                this.a(2, "lv." + author.getLv());
                this.a(4, topicPost.getTitle());
                String string = topicPost.getType();
                TextView textView = (TextView) this.a(5, TextView.class);
                if ("vote".equals(string)) {
                    textView.setText("" + topicPost.getVoteCount());
                    textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_vote, 0, 0, 0);
                } else {
                    textView.setText("" + topicPost.getCommentCount());
                    textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_message, 0, 0, 0);
                }
                TextView textView2 = (TextView) this.a(6, TextView.class);
                textView2.setVisibility(View.VISIBLE);
                textView2.setText("" + topicPost.likeCount);
                if (com.clilystudio.netbook.hpay100.a.a.r(getContext(), "community_user_gender_icon_toggle")) {
                    String string2 = author.getGender();
                    if ("male".equals(string2)) {
                        ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                        ((ImageView) this.a(7, ImageView.class)).setImageLevel(2);
                    } else if ("female".equals(string2)) {
                        ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                        ((ImageView) this.a(7, ImageView.class)).setImageLevel(3);
                    } else {
                        ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                        ((ImageView) this.a(7, ImageView.class)).setImageLevel(4);
                    }
                } else {
                    String string3 = author.getType();
                    if ("official".equals(string3)) {
                        this.a(7, false);
                        ((ImageView) this.a(7, ImageView.class)).setImageLevel(0);
                    } else if ("doyen".equals(string3)) {
                        this.a(7, false);
                        ((ImageView) this.a(7, ImageView.class)).setImageLevel(1);
                    } else {
                        this.a(7, true);
                    }
                }
                String string4 = topicPost.getState();
                if (((PostFlag) this.a(8, PostFlag.class)).a(string4)) {
                    this.a(3, true);
                    this.a(8, false);
                    return;
                }
                this.a(3, false);
                this.a(8, true);
                this.a(3, t.e(topicPost.getCreated()));
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.title, R.id.comment_count, R.id.like_count, R.id.avatar_verify, R.id.post_flag};
            }
        };
        this.d.setAdapter((ListAdapter) ((Object) this.h));
        return view;
    }
}
