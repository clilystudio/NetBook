package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.*;
import com.clilystudio.netbook.am;

import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class MyFavTopicFragment extends Fragment {
    private com.clilystudio.netbook.a_pack.e<String, Void, Topic> a;
    private com.clilystudio.netbook.a_pack.e<String, Void, Topic> b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private W<TopicPost> h;
    private List<TopicPost> i = new ArrayList<TopicPost>();
    private int j;
    private String k;
    private PullToRefreshBase.OnLastItemVisibleListener l;

    public MyFavTopicFragment() {
        this.l = new PullToRefreshBase.OnLastItemVisibleListener(){

            @Override
            public void onLastItemVisible() {
                if (MyFavTopicFragment.this.a == null || MyFavTopicFragment.this.a.getStatus() == AsyncTask.Status.FINISHED) {
                    MyFavTopicFragment.i(MyFavTopicFragment.this).setVisibility(View.VISIBLE);
                    if (MyFavTopicFragment.this.b != null && MyFavTopicFragment.this.b.getStatus() != AsyncTask.Status.FINISHED && !MyFavTopicFragment.this.b.isCancelled()) {
                        MyFavTopicFragment.this.b.cancel(true);
                    }
                    MyFavTopicFragment.this.a = new com.clilystudio.netbook.a_pack.e<String, Void, Topic>(){

                        @Override
                        protected Topic doInBackground(String... params) {
                            com.clilystudio.netbook.api.b.a();
                            return com.clilystudio.netbook.api.b.b().d(params[0], MyFavTopicFragment.k(MyFavTopicFragment.this));
                        }

                        @Override
                        protected void onPostExecute(Topic topic) {
                            super.onPostExecute(topic);
                            MyFavTopicFragment.a(MyFavTopicFragment.this).setVisibility(View.GONE);
                            MyFavTopicFragment.c(MyFavTopicFragment.this).setVisibility(View.GONE);
                            MyFavTopicFragment.i(MyFavTopicFragment.this).setVisibility(View.GONE);
                            MyFavTopicFragment.d(MyFavTopicFragment.this).n();
                            if (this.isCancelled()) return;
                            if (topic != null) {
                                if (topic.isOk()) {
                                    TopicPost[] arrtopicPost = topic.getPosts();
                                    int n = arrtopicPost.length;
                                    List<TopicPost> list = Arrays.asList(arrtopicPost);
                                    MyFavTopicFragment.a(MyFavTopicFragment.this, MyFavTopicFragment.k(MyFavTopicFragment.this) + list.size());
                                    MyFavTopicFragment.h(MyFavTopicFragment.this).addAll(list);
                                    MyFavTopicFragment.l(MyFavTopicFragment.this).a(MyFavTopicFragment.h(MyFavTopicFragment.this));
                                    MyFavTopicFragment.b(MyFavTopicFragment.this, n);
                                    if (n > 0) {
                                        if (n >= 10) {
                                            if (n != 10) return;
                                            MyFavTopicFragment.d(MyFavTopicFragment.this).setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                                            return;
                                        }
                                    } else if (MyFavTopicFragment.k(MyFavTopicFragment.this) == 0) {
                                        MyFavTopicFragment.a(MyFavTopicFragment.this).setVisibility(View.VISIBLE);
                                        MyFavTopicFragment.a(MyFavTopicFragment.this).setText("你还没有收藏哦");
                                    }
                                    MyFavTopicFragment.d(MyFavTopicFragment.this).setOnLastItemVisibleListener(null);
                                    return;
                                }
                                MyFavTopicFragment.d(MyFavTopicFragment.this).setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                                com.clilystudio.netbook.util.e.a((Activity) MyFavTopicFragment.this.getActivity(), "加载失败，上拉可重新加载");
                                return;
                            }
                            MyFavTopicFragment.d(MyFavTopicFragment.this).setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                            com.clilystudio.netbook.util.e.a((Activity) MyFavTopicFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                        }
                    };
                    String[] arrstring = new String[]{MyFavTopicFragment.b(MyFavTopicFragment.this)};
                    MyFavTopicFragment.this.a.b(arrstring);
                }
            }
        };
    }

    static /* synthetic */ int a(MyFavTopicFragment myFavTopicFragment, int n) {
        myFavTopicFragment.j = n;
        return n;
    }

    static /* synthetic */ TextView a(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.g;
    }

    static /* synthetic */ String b(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.k;
    }

    static /* synthetic */ void b(MyFavTopicFragment myFavTopicFragment, int n) {
        myFavTopicFragment.c.setCountText("\u5171\u6536\u85cf\u4e86%d\u6761\u8bdd\u9898", n);
    }

    static /* synthetic */ View c(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.f;
    }

    static /* synthetic */ LabelPtrListView d(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.c;
    }

    static /* synthetic */ ListView g(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.d;
    }

    static /* synthetic */ List h(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.i;
    }

    static /* synthetic */ View i(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.e;
    }

    static /* synthetic */ int k(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.j;
    }

    static /* synthetic */ W<TopicPost> l(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.h;
    }

    @Override
    public boolean onContextItemSelected(MenuItem menuItem) {
        if (menuItem.getMenuInfo() instanceof AdapterView.AdapterContextMenuInfo) {
            AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
            if (menuItem.getItemId() == 0) {
                TopicPost topicPost = (TopicPost) this.d.getAdapter().getItem(adapterContextMenuInfo.position);
                c<String, ResultStatus> y2 = new c<String, ResultStatus>((Activity) this.getActivity(), R.string.loading){

                    @Override
                    public ResultStatus a(String... var1) {
                        com.clilystudio.netbook.api.b.a();
                        return com.clilystudio.netbook.api.b.b().z(var1[0], var1[1]);
                    }

                    @Override
                    public void a(ResultStatus resultStatus) {
                        if (resultStatus != null) {
                            if (resultStatus.isOk()) {
                                com.clilystudio.netbook.util.e.a(this.b(), "删除成功");
                                MyFavTopicFragment.d(MyFavTopicFragment.this).setRefreshing();
                                return;
                            }
                            com.clilystudio.netbook.util.e.a(this.b(), "删除失败，请稍后再试");
                            return;
                        }
                        com.clilystudio.netbook.util.e.a(this.b(), "删除失败，请检查网络或稍后再试");
                    }
                };
                 y2.b( new String[]{this.k, topicPost.get_id()});
            }
        }
        return super.onContextItemSelected(menuItem);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        if (contextMenuInfo instanceof AdapterView.AdapterContextMenuInfo) {
            AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) contextMenuInfo;
            TopicPost topicPost = (TopicPost) this.d.getAdapter().getItem(adapterContextMenuInfo.position);
            String string = topicPost != null ? topicPost.getTitle() : "\u63d0\u793a";
            contextMenu.setHeaderTitle(string);
            contextMenu.add(0, 0, 0, R.string.delete);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_user_topic, viewGroup, false);
        this.f = view.findViewById(R.id.pb_loading);
        this.g = (TextView) view.findViewById(R.id.empty_text);
        this.c = (LabelPtrListView) view.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.e = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, null);
        this.d = (ListView) this.c.h();
        if (a.i()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.d.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.registerForContextMenu(this.d);
        this.c.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                MyFavTopicFragment.a(MyFavTopicFragment.this).setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (MyFavTopicFragment.b(MyFavTopicFragment.this) == null) {
                            MyFavTopicFragment.c(MyFavTopicFragment.this).setVisibility(View.GONE);
                            MyFavTopicFragment.a(MyFavTopicFragment.this).setVisibility(View.VISIBLE);
                            MyFavTopicFragment.a(MyFavTopicFragment.this).setText("请登录后查看");
                            MyFavTopicFragment.d(MyFavTopicFragment.this).n();
                            return;
                        }
                        if (MyFavTopicFragment.e(MyFavTopicFragment.this) != null && MyFavTopicFragment.e(MyFavTopicFragment.this).getStatus() != AsyncTask.Status.FINISHED && !MyFavTopicFragment.e(MyFavTopicFragment.this).isCancelled()) {
                            MyFavTopicFragment.e(MyFavTopicFragment.this).cancel(true);
                        }
                        MyFavTopicFragment.this.b = getAClass();
                        String[] arrstring = new String[]{MyFavTopicFragment.b(MyFavTopicFragment.this)};
                        MyFavTopicFragment.this.b.b(arrstring);
                    }

                }, 1000);
            }
        });
        this.d.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n2 = position - MyFavTopicFragment.g(MyFavTopicFragment.this).getHeaderViewsCount();
                if (n2 >= 0 && n2 < MyFavTopicFragment.h(MyFavTopicFragment.this).size()) {
                    Intent intent;
                    TopicPost topicPost = (TopicPost) MyFavTopicFragment.h(MyFavTopicFragment.this).get(n2);
                    String string = topicPost.getBlock();
                    if ("help".equals(string)) {
                        Intent intent2 = new Intent(MyFavTopicFragment.this.getActivity(), BookHelpActivity.class);
                        intent2.putExtra("extraBookHelpId", topicPost.get_id());
                        intent = intent2;
                    } else if ("review".equals(string)) {
                        Intent intent3 = new Intent(MyFavTopicFragment.this.getActivity(), ReviewActivity.class);
                        intent3.putExtra("extraReviewId", topicPost.get_id());
                        intent = intent3;
                    } else {
                        Intent intent4 = new Intent(MyFavTopicFragment.this.getActivity(), PostDetailActivity.class);
                        intent4.putExtra("PostBookId", topicPost.get_id());
                        intent = intent4;
                    }
                    MyFavTopicFragment.this.startActivity(intent);
                }
            }
        });
        this.h = new W<TopicPost>(this.getLayoutInflater(null), R.layout.list_item_new_topic) {

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
        this.k = account.getToken();
        this.b = getAClass();
        String[] arrstring = new String[]{this.k};
        this.b.b(arrstring);
        return view;
    }

    @NonNull
    private com.clilystudio.netbook.a_pack.e<String, Void, Topic> getAClass() {
        return new com.clilystudio.netbook.a_pack.e<String, Void, Topic>(){

            @Override
            protected Topic doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                return com.clilystudio.netbook.api.b.b().d(params[0], 0);
            }

            @Override
            protected void onPostExecute(Topic topic) {
                super.onPostExecute(topic);
                MyFavTopicFragment.a(MyFavTopicFragment.this).setVisibility(View.GONE);
                MyFavTopicFragment.c(MyFavTopicFragment.this).setVisibility(View.GONE);
                MyFavTopicFragment.i(MyFavTopicFragment.this).setVisibility(View.GONE);
                MyFavTopicFragment.d(MyFavTopicFragment.this).n();
                MyFavTopicFragment.d(MyFavTopicFragment.this).setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                if (topic != null) {
                    if (topic.isOk()) {
                        MyFavTopicFragment.a(MyFavTopicFragment.this, 0);
                        MyFavTopicFragment.h(MyFavTopicFragment.this).clear();
                        TopicPost[] arrtopicPost = topic.getPosts();
                        int n = arrtopicPost.length;
                        List<TopicPost> list = Arrays.asList(arrtopicPost);
                        MyFavTopicFragment.a(MyFavTopicFragment.this, MyFavTopicFragment.k(MyFavTopicFragment.this) + list.size());
                        MyFavTopicFragment.h(MyFavTopicFragment.this).addAll(list);
                        MyFavTopicFragment.l(MyFavTopicFragment.this).a(MyFavTopicFragment.h(MyFavTopicFragment.this));
                        MyFavTopicFragment.b(MyFavTopicFragment.this, n);
                        if (n < 10) {
                            MyFavTopicFragment.d(MyFavTopicFragment.this).setOnLastItemVisibleListener(null);
                            if (n == 0) {
                                MyFavTopicFragment.a(MyFavTopicFragment.this).setVisibility(View.VISIBLE);
                                MyFavTopicFragment.a(MyFavTopicFragment.this).setText("你还没有收藏哦，快去收藏一个吧");
                            }
                        }
                        return;
                    }
                    com.clilystudio.netbook.util.e.a((Activity) MyFavTopicFragment.this.getActivity(), (String) "加载失败，请下拉刷新重试");
                    return;
                }
                com.clilystudio.netbook.util.e.a((Activity) MyFavTopicFragment.this.getActivity(), (String) "加载失败，请检查网络或者稍后再试");
            }
        };
    }
}
