package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

import java.util.ArrayList;
import java.util.List;

public class MyTopicFragment extends Fragment {
    private com.clilystudio.netbook.a_pack.e<String, Void, Topic> a;
    private com.clilystudio.netbook.a_pack.e<String, Void, Topic> b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private W<TopicPost> h;
    private List<TopicPost> i = new ArrayList<>();
    private String j;
    private PullToRefreshBase.OnLastItemVisibleListener k;

    public MyTopicFragment() {
        this.k = new PullToRefreshBase.OnLastItemVisibleListener(){

            @Override
            public void onLastItemVisible() {
                if (MyTopicFragment.e(MyTopicFragment.this) == null || MyTopicFragment.e(MyTopicFragment.this).getStatus() == AsyncTask.Status.FINISHED) {
                    MyTopicFragment.i(MyTopicFragment.this).setVisibility(View.VISIBLE);
                    if (MyTopicFragment.f(MyTopicFragment.this) != null && MyTopicFragment.f(MyTopicFragment.this).getStatus() != AsyncTask.Status.FINISHED && !MyTopicFragment.f(MyTopicFragment.this).isCancelled()) {
                        MyTopicFragment.f(MyTopicFragment.this).cancel(true);
                    }
                    MyTopicFragment.this.a = new com.clilystudio.netbook.a_pack.e<String, Void, Topic>(){

                        @Override
                        protected Topic doInBackground(String... params) {
                            com.clilystudio.netbook.api.b.a();
                            return com.clilystudio.netbook.api.b.b().e(params[0], MyTopicFragment.this.i.size());
                        }

                        @Override
                        protected void onPostExecute(Topic topic) {
                            super.onPostExecute(topic);
                            MyTopicFragment.a(MyTopicFragment.this).setVisibility(View.GONE);
                            MyTopicFragment.c(MyTopicFragment.this).setVisibility(View.GONE);
                            MyTopicFragment.i(MyTopicFragment.this).setVisibility(View.GONE);
                            MyTopicFragment.d(MyTopicFragment.this).onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (topic != null && topic.getPosts() != null) {
                                TopicPost[] arrtopicPost = topic.getPosts();
                                int n = arrtopicPost.length;
                                if (n > 0) {
                                    for (TopicPost topicPost : arrtopicPost) {
                                        if (topicPost.getBook() == null) continue;
                                        MyTopicFragment.this.i.add(topicPost);
                                    }
                                    MyTopicFragment.k(MyTopicFragment.this).a(MyTopicFragment.this.i);
                                    MyTopicFragment.a(MyTopicFragment.this, MyTopicFragment.this.i.size());
                                    if (n >= 10) {
                                        MyTopicFragment.d(MyTopicFragment.this).setOnLastItemVisibleListener(MyTopicFragment.j(MyTopicFragment.this));
                                        return;
                                    }
                                }
                                MyTopicFragment.d(MyTopicFragment.this).setOnLastItemVisibleListener(null);
                                return;
                            }
                            com.clilystudio.netbook.util.e.a(MyTopicFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                        }
                    };
                    com.clilystudio.netbook.a_pack.e<String, Void, Topic> f = MyTopicFragment.e(MyTopicFragment.this);
                    String[] arrstring = new String[]{MyTopicFragment.b(MyTopicFragment.this)};
                    f.b(arrstring);
                }
            }
        };
    }

    static /* synthetic */ TextView a(MyTopicFragment myTopicFragment) {
        return myTopicFragment.g;
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

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, Topic> e(MyTopicFragment myTopicFragment) {
        return myTopicFragment.a;
    }

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, Topic> f(MyTopicFragment myTopicFragment) {
        return myTopicFragment.b;
    }

    static /* synthetic */ ListView g(MyTopicFragment myTopicFragment) {
        return myTopicFragment.d;
    }

    static /* synthetic */ View i(MyTopicFragment myTopicFragment) {
        return myTopicFragment.e;
    }

    static /* synthetic */ PullToRefreshBase.OnLastItemVisibleListener j(MyTopicFragment myTopicFragment) {
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
        this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.e = layoutInflater2.inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        this.d = this.c.getRefreshableView();
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.d.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.c.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                MyTopicFragment.a(MyTopicFragment.this).setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (MyTopicFragment.b(MyTopicFragment.this) == null) {
                            MyTopicFragment.c(MyTopicFragment.this).setVisibility(View.GONE);
                            MyTopicFragment.a(MyTopicFragment.this).setVisibility(View.VISIBLE);
                            MyTopicFragment.a(MyTopicFragment.this).setText("请登录后查看");
                            MyTopicFragment.d(MyTopicFragment.this).onRefreshComplete();
                            return;
                        }
                        if (MyTopicFragment.e(MyTopicFragment.this) != null && MyTopicFragment.e(MyTopicFragment.this).getStatus() != AsyncTask.Status.FINISHED && !MyTopicFragment.e(MyTopicFragment.this).isCancelled()) {
                            MyTopicFragment.e(MyTopicFragment.this).cancel(true);
                        }
                        MyTopicFragment.this.a = getGClass();
                        com.clilystudio.netbook.a_pack.e<String, Void, Topic> g = MyTopicFragment.f(MyTopicFragment.this);
                        String[] arrstring = new String[]{MyTopicFragment.b(MyTopicFragment.this)};
                        g.b(arrstring);
                    }

                }, 1000);
            }
        });
        this.d.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n2 = position - MyTopicFragment.g(MyTopicFragment.this).getHeaderViewsCount();
                if (n2 >= 0 && n2 < MyTopicFragment.this.i.size()) {
                    Intent intent;
                    TopicPost topicPost = MyTopicFragment.this.i.get(n2);
                    String string = topicPost.getBlock();
                    if ("help".equals(string)) {
                        Intent intent2 = new Intent(MyTopicFragment.this.getActivity(), BookHelpActivity.class);
                        intent2.putExtra("extraBookHelpId", topicPost.get_id());
                        intent = intent2;
                    } else if ("review".equals(string)) {
                        Intent intent3 = new Intent(MyTopicFragment.this.getActivity(), ReviewActivity.class);
                        intent3.putExtra("extraReviewId", topicPost.get_id());
                        intent = intent3;
                    } else {
                        Intent intent4 = new Intent(MyTopicFragment.this.getActivity(), PostDetailActivity.class);
                        intent4.putExtra("PostBookId", topicPost.get_id());
                        intent = intent4;
                    }
                    MyTopicFragment.this.startActivity(intent);
                }
            }
        });
        this.h = new W<TopicPost>(layoutInflater2, R.layout.list_item_new_topic) {

            @Override
            protected void a(int var1, TopicPost topicPost) {
                String string;
                this.a(1, topicPost.getAuthor().getNickname());
                this.a(2, com.clilystudio.netbook.util.t.e(topicPost.getCreated()));
                this.a(3, topicPost.getTitle());
                String string2 = topicPost.getBlock();
                CoverView coverView = this.a(0, CoverView.class);
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
                    this.a(6, ImageView.class).setImageLevel(0);
                    return;
                }
                if ("hot".equals(string)) {
                    this.a(6, false);
                    this.a(6, ImageView.class).setImageLevel(1);
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
        com.clilystudio.netbook.a_pack.e<String, Void, Topic> g2 = this.b = getGClass();
        String[] arrstring = new String[]{this.j};
        g2.b(arrstring);
        return view;
    }

    @NonNull
    private com.clilystudio.netbook.a_pack.e<String, Void, Topic> getGClass() {
        return new com.clilystudio.netbook.a_pack.e<String, Void, Topic>(){

            @Override
            protected Topic doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                return com.clilystudio.netbook.api.b.b().e(params[0], 0);
            }

            @Override
            protected void onPostExecute(Topic topic) {
                super.onPostExecute(topic);
                MyTopicFragment.a(MyTopicFragment.this).setVisibility(View.GONE);
                MyTopicFragment.c(MyTopicFragment.this).setVisibility(View.GONE);
                MyTopicFragment.i(MyTopicFragment.this).setVisibility(View.GONE);
                MyTopicFragment.d(MyTopicFragment.this).onRefreshComplete();
                if (topic != null && topic.getPosts() != null) {
                    MyTopicFragment.this.i.clear();
                    TopicPost[] arrtopicPost = topic.getPosts();
                    int n = arrtopicPost.length;
                    if (n > 0) {
                        for (TopicPost topicPost : arrtopicPost) {
                            if (topicPost.getBook() == null) continue;
                            MyTopicFragment.this.i.add(topicPost);
                        }
                        if (n < 10) {
                            MyTopicFragment.d(MyTopicFragment.this).setOnLastItemVisibleListener(null);
                        } else {
                            MyTopicFragment.d(MyTopicFragment.this).setOnLastItemVisibleListener(MyTopicFragment.j(MyTopicFragment.this));
                        }
                    } else {
                        MyTopicFragment.a(MyTopicFragment.this).setVisibility(View.VISIBLE);
                        MyTopicFragment.a(MyTopicFragment.this).setText("你还没有发布哦，快去发布一个吧");
                    }
                    MyTopicFragment.k(MyTopicFragment.this).a(MyTopicFragment.this.i);
                    MyTopicFragment.a(MyTopicFragment.this, MyTopicFragment.this.i.size());
                    return;
                }
                com.clilystudio.netbook.util.e.a(MyTopicFragment.this.getActivity(), "加载失败，请检查网络或者稍后再试");
            }
        };
    }

}
