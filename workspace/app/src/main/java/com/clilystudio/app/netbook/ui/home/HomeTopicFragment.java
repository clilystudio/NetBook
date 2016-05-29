package com.clilystudio.app.netbook.ui.home;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.adapter.HomeTopicAdapter;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.app.netbook.event.c;
import com.clilystudio.app.netbook.event.h;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.o;
import com.clilystudio.app.netbook.model.BookShelfTopic;
import com.clilystudio.app.netbook.ui.post.BookHelpListActivity;
import com.clilystudio.app.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.app.netbook.ui.post.GirlTopicListActivity;
import com.clilystudio.app.netbook.ui.post.ReviewListActivity;
import com.clilystudio.app.netbook.ui.post.TweetTabActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity.Source;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.widget.CommunitySection;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HomeTopicFragment extends HomeFragment
        implements View.OnClickListener {
    protected com.clilystudio.app.netbook.api.b a = com.clilystudio.app.netbook.api.b.a();
    private PullToRefreshListView b;
    private ListView c;
    private HomeTopicAdapter d;
    private List<BookShelfTopic> e = new ArrayList();
    private View f;

    private void a(View paramView) {
        CommunitySection localCommunitySection = (CommunitySection) paramView.findViewById(2131493510);
        if (a.r(getActivity(), "switch_news")) {
            localCommunitySection.a(a.a(getActivity(), "FRIST_RUN_POST", true));
            localCommunitySection.setOnClickListener(this);
        }
        while (true) {
            paramView.findViewById(2131493511).setOnClickListener(this);
            paramView.findViewById(2131493512).setOnClickListener(this);
            paramView.findViewById(2131493513).setOnClickListener(this);
            paramView.findViewById(2131493514).setOnClickListener(this);
            return;
            localCommunitySection.setVisibility(8);
        }
    }

    private void a(String paramString) {
        new O(this, (byte) 0).b(new String[]{paramString});
    }

    public static HomeTopicFragment b() {
        return new HomeTopicFragment();
    }

    private void b(String paramString) {
        if (paramString == null) {
            P localP = new P(this, (byte) 0);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = am_CommonUtils.e().getToken();
            localP.execute(arrayOfString);
            return;
        }
        if (paramString.equals("female")) {
            startActivity(new Intent(getActivity(), GirlTopicListActivity.class));
            return;
        }
        e.a(getActivity(), 2131034395);
    }

    private void c() {
        if (this.b != null)
            this.b.n();
    }

    private void d() {
        List localList = BookReadRecord.getAll();
        String str2;
        if ((localList != null) && (!localList.isEmpty())) {
            StringBuilder localStringBuilder = new StringBuilder();
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext()) {
                localStringBuilder.append(((BookReadRecord) localIterator.next()).getBookId());
                localStringBuilder.append(",");
            }
            str2 = localStringBuilder.toString();
        }
        for (String str1 = str2.substring(0, -1 + str2.length()); ; str1 = "") {
            if ("".equals(str1)) {
                c();
                this.e.clear();
                if (this.d != null)
                    this.d.a(this.e);
            }
            a(str1);
            return;
        }
    }

    public final String a() {
        return "home_topic";
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        this.c = ((ListView) this.b.h());
        a.a(getActivity(), this.c);
        this.f = LayoutInflater.from(getActivity()).inflate(2130903231, this.c, false);
        this.c.addHeaderView(this.f, null, false);
        a(this.f);
        this.b.setOnRefreshListener(new L(this));
        this.c.setOnItemClickListener(new N(this));
        this.d = new HomeTopicAdapter(getActivity());
        this.c.setAdapter(this.d);
        List localList = BookReadRecord.getAll();
        if ((localList != null) && (localList.size() > 0)) {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext()) {
                BookReadRecord localBookReadRecord = (BookReadRecord) localIterator.next();
                BookShelfTopic localBookShelfTopic = new BookShelfTopic();
                localBookShelfTopic.setBookId(localBookReadRecord.getBookId());
                localBookShelfTopic.setTitle(localBookReadRecord.getTitle());
                localBookShelfTopic.setFullCover(localBookReadRecord.getFullCover());
                localBookShelfTopic.setPostCount(0);
                this.e.add(localBookShelfTopic);
            }
            this.d.a(this.e);
        }
        for (int i = 1; i != 0; i = 0) {
            this.b.setRefreshing();
            return;
        }
        a("");
    }

    @l
    public void onBookAdded(c paramc) {
        d();
    }

    @l
    public void onBookRemoved(h paramh) {
        d();
    }

    @l
    public void onBookShelfRefresh(BookShelfRefreshEvent paramBookShelfRefreshEvent) {
        d();
    }

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131493510:
                com.umeng.a.b.a(getActivity(), "enter_home_topic");
                Intent localIntent2 = new Intent(getActivity(), TweetTabActivity.class);
                if (a.a(getActivity(), "FRIST_RUN_POST", true)) {
                    a.b(getActivity(), "FRIST_RUN_POST", false);
                    i.a().c(new o());
                }
                startActivity(localIntent2);
                return;
            case 2131493511:
                startActivity(new Intent(getActivity(), CommonPostListActivity.class));
                return;
            case 2131493512:
                startActivity(new Intent(getActivity(), ReviewListActivity.class));
                return;
            case 2131493513:
                startActivity(new Intent(getActivity(), BookHelpListActivity.class));
                return;
            case 2131493514:
        }
        if (am_CommonUtils.g()) {
            b(am_CommonUtils.e().getUser().getGender());
            return;
        }
        Intent localIntent1 = AuthLoginActivity.a(getActivity());
        localIntent1.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
        startActivity(localIntent1);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        i.a().a(this);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903214, paramViewGroup, false);
        this.b = ((PullToRefreshListView) localView.findViewById(2131493443));
        this.b.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        return localView;
    }

    @l
    public void onEnterTweet(o paramo) {
        a(this.f);
    }

    public void onPause() {
        super.onPause();
        i.a().b(this);
    }

    public void onResume() {
        super.onResume();
        i.a().a(this);
        this.d.notifyDataSetChanged();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.HomeTopicFragment
 * JD-Core Version:    0.6.2
 */