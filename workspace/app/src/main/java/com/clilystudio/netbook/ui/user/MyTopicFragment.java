package com.clilystudio.netbook.ui.user;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MyTopicFragment extends Fragment {
    private F a;
    private G b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private W<TopicPost> h;
    private List<TopicPost> i = new ArrayList<TopicPost>();
    private String j;
    private j k;

    public MyTopicFragment() {
        this.k = new E(this);
    }

    static /* synthetic */ TextView a(MyTopicFragment myTopicFragment) {
        return myTopicFragment.g;
    }

    static /* synthetic */ F a(MyTopicFragment myTopicFragment, F f) {
        myTopicFragment.a = f;
        return f;
    }

    static /* synthetic */ G a(MyTopicFragment myTopicFragment, G g) {
        myTopicFragment.b = g;
        return g;
    }

    static /* synthetic */ void a(MyTopicFragment myTopicFragment, int n) {
        myTopicFragment.c.setCountText("\u5171\u53d1\u5e03\u4e86%d\u6761\u8bdd\u9898", n);
    }

    static /* synthetic */ String b(MyTopicFragment myTopicFragment) {
        return myTopicFragment.j;
    }

    static /* synthetic */ View c(MyTopicFragment myTopicFragment) {
        return myTopicFragment.f;
    }

    static /* synthetic */ LabelPtrListView d(MyTopicFragment myTopicFragment) {
        return myTopicFragment.c;
    }

    static /* synthetic */ F e(MyTopicFragment myTopicFragment) {
        return myTopicFragment.a;
    }

    static /* synthetic */ G f(MyTopicFragment myTopicFragment) {
        return myTopicFragment.b;
    }

    static /* synthetic */ ListView g(MyTopicFragment myTopicFragment) {
        return myTopicFragment.d;
    }

    static /* synthetic */ List h(MyTopicFragment myTopicFragment) {
        return myTopicFragment.i;
    }

    static /* synthetic */ View i(MyTopicFragment myTopicFragment) {
        return myTopicFragment.e;
    }

    static /* synthetic */ j j(MyTopicFragment myTopicFragment) {
        return myTopicFragment.k;
    }

    static /* synthetic */ W<TopicPost> k(MyTopicFragment myTopicFragment) {
        return myTopicFragment.h;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_user_topic, viewGroup, false);
        this.f = view.findViewById(R.id.pb_loading);
        this.g = (TextView) view.findViewById(R.id.empty_text);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = (LabelPtrListView) view.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.e = layoutInflater2.inflate(R.layout.loading_item, null);
        this.d = (ListView) this.c.h();
        if (a.i()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.d.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.c.setOnRefreshListener(new B(this));
        this.d.setOnItemClickListener(new D(this));
        this.h = new W<TopicPost>(layoutInflater2, R.layout.list_item_new_topic) {

            @Override
            protected void a(int var1, TopicPost topicPost) {
                String string;
                this.a(1, topicPost.getAuthor().getNickname());
                this.a(2, com.clilystudio.netbook.util.t.e((Date) topicPost.getCreated()));
                this.a(3, topicPost.getTitle());
                String string2 = topicPost.getBlock();
                CoverView coverView = (CoverView) this.a(0, CoverView.class);
                if ("help".equals(string2)) {
                    coverView.setImageResource(R.drawable.book_help_cover_default);
                } else if ("ramble".equals(string2)) {
                    coverView.setImageResource(R.drawable.discuss_cover_default);
                } else {
                    coverView.setImageUrl(topicPost.getBook().getFullCover(), R.drawable.cover_default);
                }
                if ("vote".equals(topicPost.getType())) {
                    this.a(4, false);
                    this.a(5, true);
                    this.a(4, String.valueOf(topicPost.getVoteCount()));
                } else {
                    this.a(4, true);
                    this.a(5, false);
                    this.a(5, String.valueOf(topicPost.getCommentCount()));
                }
                if ("focus".equals(string = topicPost.getState())) {
                    this.a(6, false);
                    ((ImageView) this.a(6, ImageView.class)).setImageLevel(0);
                    return;
                }
                if ("hot".equals(string)) {
                    this.a(6, false);
                    ((ImageView) this.a(6, ImageView.class)).setImageLevel(1);
                    return;
                }
                this.a(6, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.new_topic_listitem_cover, R.id.new_topic_listitem_user, R.id.time, R.id.title, R.id.new_topic_listitem_vote, R.id.new_topic_listitem_comment, R.id.new_topic_listitem_label_status};
            }
        };
        this.d.setAdapter(this.h);
        Account account = am.e();
        if (account == null) {
            this.f.setVisibility(View.GONE);
            this.g.setVisibility(View.VISIBLE);
            this.g.setText("\u8bf7\u767b\u5f55\u540e\u67e5\u770b");
            return view;
        }
        this.j = account.getToken();
        G g2 = this.b = new G(this, 0);
        String[] arrstring = new String[]{this.j};
        g2.b(arrstring);
        return view;
    }
}
