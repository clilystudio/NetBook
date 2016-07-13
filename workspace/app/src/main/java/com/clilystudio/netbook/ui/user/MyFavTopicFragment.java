package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
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

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MyFavTopicFragment extends Fragment {
    private BaseAsyncTask<String, Void, Topic> a;
    private BaseAsyncTask<String, Void, Topic> b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private BaseDownloadAdapter<TopicPost> h;
    private List<TopicPost> i = new ArrayList<>();
    private int j;
    private String k;
    private PullToRefreshBase.OnLastItemVisibleListener l;

    public MyFavTopicFragment() {
        this.l = new PullToRefreshBase.OnLastItemVisibleListener(){

            @Override
            public void onLastItemVisible() {
                if (MyFavTopicFragment.this.a == null || MyFavTopicFragment.this.a.getStatus() == AsyncTask.Status.FINISHED) {
                    MyFavTopicFragment.this.e.setVisibility(View.VISIBLE);
                    if (MyFavTopicFragment.this.b != null && MyFavTopicFragment.this.b.getStatus() != AsyncTask.Status.FINISHED && !MyFavTopicFragment.this.b.isCancelled()) {
                        MyFavTopicFragment.this.b.cancel(true);
                    }
                    MyFavTopicFragment.this.a = new BaseAsyncTask<String, Void, Topic>(){

                        @Override
                        protected Topic doInBackground(String... params) {
                            ApiServiceProvider.getInstance();
                            return ApiServiceProvider.getApiService().d(params[0], MyFavTopicFragment.k(MyFavTopicFragment.this));
                        }

                        @Override
                        protected void onPostExecute(Topic topic) {
                            super.onPostExecute(topic);
                            MyFavTopicFragment.this.g.setVisibility(View.GONE);
                            MyFavTopicFragment.this.f.setVisibility(View.GONE);
                            MyFavTopicFragment.this.e.setVisibility(View.GONE);
                            MyFavTopicFragment.this.c.onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (topic != null) {
                                if (topic.isOk()) {
                                    TopicPost[] arrtopicPost = topic.getPosts();
                                    int n = arrtopicPost.length;
                                    List<TopicPost> list = Arrays.asList(arrtopicPost);
                                    MyFavTopicFragment.a(MyFavTopicFragment.this, MyFavTopicFragment.k(MyFavTopicFragment.this) + list.size());
                                    MyFavTopicFragment.this.i.addAll(list);
                                    MyFavTopicFragment.this.h.a(MyFavTopicFragment.this.i);
                                    MyFavTopicFragment.b(MyFavTopicFragment.this, n);
                                    if (n > 0) {
                                        if (n >= 10) {
                                            if (n != 10) return;
                                            MyFavTopicFragment.this.c.setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                                            return;
                                        }
                                    } else if (MyFavTopicFragment.k(MyFavTopicFragment.this) == 0) {
                                        MyFavTopicFragment.this.g.setVisibility(View.VISIBLE);
                                        MyFavTopicFragment.this.g.setText("你还没有收藏哦");
                                    }
                                    MyFavTopicFragment.this.c.setOnLastItemVisibleListener(null);
                                    return;
                                }
                                MyFavTopicFragment.this.c.setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                                com.clilystudio.netbook.util.e.a(MyFavTopicFragment.this.getActivity(), "加载失败，上拉可重新加载");
                                return;
                            }
                            MyFavTopicFragment.this.c.setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                            com.clilystudio.netbook.util.e.a(MyFavTopicFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
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

    static /* synthetic */ String b(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.k;
    }

    static /* synthetic */ void b(MyFavTopicFragment myFavTopicFragment, int n) {
        myFavTopicFragment.c.setCountText("\u5171\u6536\u85cf\u4e86%d\u6761\u8bdd\u9898", n);
    }

    static /* synthetic */ int k(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.j;
    }

    @Override
    public boolean onContextItemSelected(MenuItem menuItem) {
        if (menuItem.getMenuInfo() instanceof AdapterView.AdapterContextMenuInfo) {
            AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
            if (menuItem.getItemId() == 0) {
                TopicPost topicPost = (TopicPost) this.d.getAdapter().getItem(adapterContextMenuInfo.position);
                BaseLoadingTask<String, ResultStatus> y2 = new BaseLoadingTask<String, ResultStatus>((Activity) this.getActivity(), R.string.loading){

                    @Override
                    public ResultStatus a(String... var1) {
                        ApiServiceProvider.getInstance();
                        return ApiServiceProvider.getApiService().z(var1[0], var1[1]);
                    }

                    @Override
                    public void a(ResultStatus resultStatus) {
                        if (resultStatus != null) {
                            if (resultStatus.isOk()) {
                                com.clilystudio.netbook.util.e.a(this.b(), "删除成功");
                                MyFavTopicFragment.this.c.setRefreshing();
                                return;
                            }
                            com.clilystudio.netbook.util.e.a(this.b(), "删除失败，请稍后再试");
                            return;
                        }
                        com.clilystudio.netbook.util.e.a(this.b(), "删除失败，请检查网络或稍后再试");
                    }
                };
                 y2.b(this.k, topicPost.get_id());
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
        this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.e = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        this.d = this.c.getRefreshableView();
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
            this.d.setFooterDividersEnabled(false);
        }
        this.d.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.registerForContextMenu(this.d);
        this.c.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                MyFavTopicFragment.this.g.setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (MyFavTopicFragment.b(MyFavTopicFragment.this) == null) {
                            MyFavTopicFragment.this.f.setVisibility(View.GONE);
                            MyFavTopicFragment.this.g.setVisibility(View.VISIBLE);
                            MyFavTopicFragment.this.g.setText("请登录后查看");
                            MyFavTopicFragment.this.c.onRefreshComplete();
                            return;
                        }
                        if (MyFavTopicFragment.this.b != null && MyFavTopicFragment.this.b.getStatus() != AsyncTask.Status.FINISHED && !MyFavTopicFragment.this.b.isCancelled()) {
                            MyFavTopicFragment.this.b.cancel(true);
                        }
                        MyFavTopicFragment.this.b = getAClass();
                        String[] arrstring = new String[]{MyFavTopicFragment.b(MyFavTopicFragment.this)};
                        MyFavTopicFragment.this.b.b(arrstring);
                    }
                }, 1000);
            }
        });
        this.h = new BaseDownloadAdapter<TopicPost>(this.getLayoutInflater(null), R.layout.list_item_new_topic) {

            @Override
            protected void a(int var1, TopicPost topicPost) {
                String string;
                this.a(1, topicPost.getAuthor().getNickname());
                this.a(2, com.clilystudio.netbook.util.t.e(topicPost.getCreated()));
                this.a(3, topicPost.getTitle());
                String string2 = topicPost.getBlock();
                CoverView coverView = this.a(0);
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
                ImageView imageView = this.a(6);
                if ("focus".equals(string = topicPost.getState())) {
                    this.a(6, false);
                    imageView.setImageLevel(0);
                    return;
                }
                if ("hot".equals(string)) {
                    this.a(6, false);
                    imageView.setImageLevel(1);
                    return;
                }
                this.a(6, true);
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.new_topic_listitem_cover, R.id.new_topic_listitem_user, R.id.time, R.id.title, R.id.new_topic_listitem_vote, R.id.new_topic_listitem_comment, R.id.new_topic_listitem_label_status};
            }
        };
        this.d.setAdapter(this.h);
        Account account = am.getAccount();
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
    private BaseAsyncTask<String, Void, Topic> getAClass() {
        return new BaseAsyncTask<String, Void, Topic>(){

            @Override
            protected Topic doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().d(params[0], 0);
            }

            @Override
            protected void onPostExecute(Topic topic) {
                super.onPostExecute(topic);
                MyFavTopicFragment.this.g.setVisibility(View.GONE);
                MyFavTopicFragment.this.f.setVisibility(View.GONE);
                MyFavTopicFragment.this.e.setVisibility(View.GONE);
                MyFavTopicFragment.this.c.onRefreshComplete();
                MyFavTopicFragment.this.c.setOnLastItemVisibleListener(MyFavTopicFragment.this.l);
                if (topic != null) {
                    if (topic.isOk()) {
                        MyFavTopicFragment.a(MyFavTopicFragment.this, 0);
                        MyFavTopicFragment.this.i.clear();
                        TopicPost[] arrtopicPost = topic.getPosts();
                        int n = arrtopicPost.length;
                        List<TopicPost> list = Arrays.asList(arrtopicPost);
                        MyFavTopicFragment.a(MyFavTopicFragment.this, MyFavTopicFragment.k(MyFavTopicFragment.this) + list.size());
                        MyFavTopicFragment.this.i.addAll(list);
                        MyFavTopicFragment.this.h.a(MyFavTopicFragment.this.i);
                        MyFavTopicFragment.b(MyFavTopicFragment.this, n);
                        if (n < 10) {
                            MyFavTopicFragment.this.c.setOnLastItemVisibleListener(null);
                            if (n == 0) {
                                MyFavTopicFragment.this.g.setVisibility(View.VISIBLE);
                                MyFavTopicFragment.this.g.setText("你还没有收藏哦，快去收藏一个吧");
                            }
                        }
                        return;
                    }
                    com.clilystudio.netbook.util.e.a(MyFavTopicFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                    return;
                }
                com.clilystudio.netbook.util.e.a(MyFavTopicFragment.this.getActivity(), "加载失败，请检查网络或者稍后再试");
            }
        };
    }
}
