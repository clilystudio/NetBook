package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
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

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MyFavTopicFragment extends Fragment {
    private z a;
    private A b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private W<TopicPost> h;
    private List<TopicPost> i = new ArrayList<TopicPost>();
    private int j;
    private String k;
    private j l;

    public MyFavTopicFragment() {
        this.l = new x(this);
    }

    static /* synthetic */ int a(MyFavTopicFragment myFavTopicFragment, int n) {
        myFavTopicFragment.j = n;
        return n;
    }

    static /* synthetic */ TextView a(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.g;
    }

    static /* synthetic */ A a(MyFavTopicFragment myFavTopicFragment, A a) {
        myFavTopicFragment.b = a;
        return a;
    }

    static /* synthetic */ z a(MyFavTopicFragment myFavTopicFragment, z z2) {
        myFavTopicFragment.a = z2;
        return z2;
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

    static /* synthetic */ z e(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.a;
    }

    static /* synthetic */ A f(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.b;
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

    static /* synthetic */ j j(MyFavTopicFragment myFavTopicFragment) {
        return myFavTopicFragment.l;
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
                y y2 = new y(this, (Activity) this.getActivity(), R.string.loading);
                Object[] arrobject = new String[]{this.k, topicPost.get_id()};
                y2.b(arrobject);
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
        this.c.setOnRefreshListener(new u(this));
        this.d.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new w(this)));
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
        A a2 = this.b = new A(this, 0);
        String[] arrstring = new String[]{this.k};
        a2.b(arrstring);
        return view;
    }
}
