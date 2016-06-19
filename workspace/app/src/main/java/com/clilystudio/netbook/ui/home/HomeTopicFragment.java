package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.HomeTopicAdapter;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.c;
import com.clilystudio.netbook.event.h;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.o;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.ui.post.BookHelpListActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.netbook.ui.post.GirlTopicListActivity;
import com.clilystudio.netbook.ui.post.ReviewListActivity;
import com.clilystudio.netbook.ui.post.TweetTabActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.widget.CommunitySection;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HomeTopicFragment extends HomeFragment implements View.OnClickListener {
    private PullToRefreshListView b;
    protected b a = b.a();
    private ListView c;
    private HomeTopicAdapter d;
    private List<BookShelfTopic> e = new ArrayList<BookShelfTopic>();
    private View f;

    static /* synthetic */ void a(HomeTopicFragment homeTopicFragment) {
        homeTopicFragment.d();
    }

    static /* synthetic */ void a(HomeTopicFragment homeTopicFragment, String string) {
        homeTopicFragment.b(string);
    }

    static /* synthetic */ ListView b(HomeTopicFragment homeTopicFragment) {
        return homeTopicFragment.c;
    }

    public static HomeTopicFragment b() {
        return new HomeTopicFragment();
    }

    static /* synthetic */ List c(HomeTopicFragment homeTopicFragment) {
        return homeTopicFragment.e;
    }

    static /* synthetic */ void d(HomeTopicFragment homeTopicFragment) {
        homeTopicFragment.c();
    }

    static /* synthetic */ HomeTopicAdapter e(HomeTopicFragment homeTopicFragment) {
        return homeTopicFragment.d;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(View view) {
        CommunitySection communitySection = (CommunitySection) view.findViewById(R.id.community_section);
        if (a.r(this.getActivity(), "switch_news")) {
            communitySection.a(a.a((Context) this.getActivity(), "FRIST_RUN_POST", true));
            communitySection.setOnClickListener(this);
        } else {
            communitySection.setVisibility(View.GONE);
        }
        view.findViewById(R.id.discuss_section).setOnClickListener(this);
        view.findViewById(R.id.review_section).setOnClickListener(this);
        view.findViewById(R.id.helper_section).setOnClickListener(this);
        view.findViewById(R.id.girl_section).setOnClickListener(this);
    }

    private void a(String string) {
        new O(this, 0).b(string);
    }

    private void b(String string) {
        if (string == null) {
            P p = new P(this, 0);
            String[] arrstring = new String[]{am.e().getToken()};
            p.execute(arrstring);
            return;
        }
        if (string.equals("female")) {
            this.startActivity(new Intent(this.getActivity(), GirlTopicListActivity.class));
            return;
        }
        e.a((Activity) this.getActivity(), (int) R.string.girl_only);
    }

    private void c() {
        if (this.b != null) {
            this.b.n();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void d() {
        String string;
        List<BookReadRecord> list = BookReadRecord.getAll();
        if (list != null && !list.isEmpty()) {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator<BookReadRecord> iterator = list.iterator();
            while (iterator.hasNext()) {
                stringBuilder.append(iterator.next().getBookId());
                stringBuilder.append(",");
            }
            String string2 = stringBuilder.toString();
            string = string2.substring(0, -1 + string2.length());
        } else {
            string = "";
        }
        if ("".equals(string)) {
            this.c();
            this.e.clear();
            if (this.d != null) {
                this.d.a(this.e);
            }
        }
        this.a(string);
    }

    @Override
    public final String a() {
        return "home_topic";
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onActivityCreated(Bundle bundle) {
        boolean bl;
        super.onActivityCreated(bundle);
        this.c = (ListView) this.b.h();
        a.a((Context) this.getActivity(), this.c);
        this.f = LayoutInflater.from(this.getActivity()).inflate(R.layout.home_topic_header, (ViewGroup) this.c, false);
        this.c.addHeaderView(this.f, null, false);
        this.a(this.f);
        this.b.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        HomeTopicFragment.this.d();
                   }
                }, 1000);
            }
        });
        this.c.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n2 = -1 + (position - HomeTopicFragment.this.c.getHeaderViewsCount());
                if (n2 < 0 || n2 >= HomeTopicFragment.this.e.size()) {
                    return;
                }
                BookShelfTopic bookShelfTopic = HomeTopicFragment.this.e.get(n2);
                Intent intent = BookPostTabActivity.a(HomeTopicFragment.this.getActivity(), bookShelfTopic.getBookId(), bookShelfTopic.getTitle());
                HomeTopicFragment.this.startActivity(intent);
                BookTopicEnterRecord.updateCount(bookShelfTopic.getBookId(), bookShelfTopic.getPostCount());
            }
        });
        this.d = new HomeTopicAdapter(this.getActivity());
        this.c.setAdapter(this.d);
        List<BookReadRecord> list = BookReadRecord.getAll();
        if (list != null && list.size() > 0) {
            for (BookReadRecord bookReadRecord : list) {
                BookShelfTopic bookShelfTopic = new BookShelfTopic();
                bookShelfTopic.setBookId(bookReadRecord.getBookId());
                bookShelfTopic.setTitle(bookReadRecord.getTitle());
                bookShelfTopic.setFullCover(bookReadRecord.getFullCover());
                bookShelfTopic.setPostCount(0);
                this.e.add(bookShelfTopic);
            }
            this.d.a(this.e);
            bl = true;
        } else {
            bl = false;
        }
        if (bl) {
            this.b.setRefreshing();
            return;
        }
        this.a("");
    }

    @l
    public void onBookAdded(c c2) {
        this.d();
    }

    @l
    public void onBookRemoved(h h2) {
        this.d();
    }

    @l
    public void onBookShelfRefresh(BookShelfRefreshEvent bookShelfRefreshEvent) {
        this.d();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.community_section: {
                MiStatInterface.recordCountEvent("enter_home_topic",null);
                Intent intent = new Intent(this.getActivity(), TweetTabActivity.class);
                if (a.a((Context) this.getActivity(), "FRIST_RUN_POST", true)) {
                    a.b((Context) this.getActivity(), "FRIST_RUN_POST", false);
                    i.a().c(new o());
                }
                this.startActivity(intent);
                return;
            }
            case R.id.discuss_section: {
                this.startActivity(new Intent(this.getActivity(), CommonPostListActivity.class));
                return;
            }
            case R.id.review_section: {
                this.startActivity(new Intent(this.getActivity(), ReviewListActivity.class));
                return;
            }
            case R.id.helper_section: {
                this.startActivity(new Intent(this.getActivity(), BookHelpListActivity.class));
                return;
            }
            case R.id.girl_section:
        }
        if (am.g()) {
            this.b(am.e().getUser().getGender());
            return;
        }
        Intent intent = AuthLoginActivity.a(this.getActivity());
        intent.putExtra("KEY_SOURCE", (Serializable) ((Object) AuthLoginActivity$Source.HOME));
        this.startActivity(intent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_home_topic, viewGroup, false);
        this.b = (PullToRefreshListView) view.findViewById(R.id.ptr_list_home_topic);
        this.b.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        return view;
    }

    @l
    public void onEnterTweet(o o2) {
        this.a(this.f);
    }

    @Override
    public void onPause() {
        super.onPause();
        i.a().b(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        i.a().a(this);
        this.d.notifyDataSetChanged();
    }
}
