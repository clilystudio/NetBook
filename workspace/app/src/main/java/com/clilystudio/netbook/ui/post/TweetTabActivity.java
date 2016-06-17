package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.FloatingActionButton;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.BaseTabActivity;

import java.util.ArrayList;
import java.util.List;

public class TweetTabActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private List<Fragment> b = new ArrayList<Fragment>();
    private ViewPager c;
    private dV e;
    private RelativeLayout f;
    private RelativeLayout g;
    private LinearLayout h;
    private LinearLayout i;
    private FloatingActionButton j;
    private FloatingActionButton k;
    private FloatingActionButton l;
    private FloatingActionButton m;
    private View n;
    private boolean o = false;

    public static Intent a(Context context) {
        return new d().a(context, TweetTabActivity.class).a();
    }

    static /* synthetic */ List a(TweetTabActivity tweetTabActivity) {
        return tweetTabActivity.b;
    }

    static /* synthetic */ boolean a(TweetTabActivity tweetTabActivity, boolean bl) {
        tweetTabActivity.o = bl;
        return bl;
    }

    static /* synthetic */ ViewPager b(TweetTabActivity tweetTabActivity) {
        return tweetTabActivity.c;
    }

    static /* synthetic */ boolean c(TweetTabActivity tweetTabActivity) {
        return tweetTabActivity.o;
    }

    static /* synthetic */ void d(TweetTabActivity tweetTabActivity) {
        tweetTabActivity.f();
    }

    static /* synthetic */ FloatingActionButton e(TweetTabActivity tweetTabActivity) {
        return tweetTabActivity.j;
    }

    static /* synthetic */ void f(TweetTabActivity tweetTabActivity) {
        int n = a.a((Context) tweetTabActivity, 18.0f);
        int n2 = a.a((Context) tweetTabActivity, 36.0f);
        tweetTabActivity.f.setVisibility(View.VISIBLE);
        tweetTabActivity.n.setVisibility(View.VISIBLE);
        tweetTabActivity.i.setVisibility(View.VISIBLE);
        tweetTabActivity.h.setVisibility(View.VISIBLE);
        com.c.b.a.a(tweetTabActivity.i).c(1.0f).b((float) (-n)).a(150).a(new DecelerateInterpolator()).b(35).a();
        com.c.b.a.a(tweetTabActivity.h).c(1.0f).b((float) (-n2)).a(150).a(new DecelerateInterpolator()).a();
        com.c.b.a.a(tweetTabActivity.j).a(135.0f).a(150).a(new AccelerateDecelerateInterpolator()).a();
    }

    static /* synthetic */ void g(TweetTabActivity tweetTabActivity) {
        tweetTabActivity.b();
    }

    static /* synthetic */ void h(TweetTabActivity tweetTabActivity) {
        Intent intent = new Intent(tweetTabActivity, AddVoteActivity.class);
        intent.putExtra("add_post_mode", "TWEET");
        tweetTabActivity.startActivity(intent);
    }

    static /* synthetic */ void i(TweetTabActivity tweetTabActivity) {
        Intent intent = new Intent(tweetTabActivity, AddVoteActivity.class);
        intent.putExtra("add_post_mode", "ARTICLE");
        tweetTabActivity.startActivity(intent);
    }

    static /* synthetic */ void j(TweetTabActivity tweetTabActivity) {
        Intent intent = new Intent(tweetTabActivity, AddReviewActivity.class);
        intent.putExtra("INTENT_TYPE_NAME", "BOOK_COMMENT");
        tweetTabActivity.startActivity(intent);
    }

    static /* synthetic */ LinearLayout k(TweetTabActivity tweetTabActivity) {
        return tweetTabActivity.i;
    }

    static /* synthetic */ LinearLayout l(TweetTabActivity tweetTabActivity) {
        return tweetTabActivity.h;
    }

    private void b() {
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (TweetTabActivity.c(TweetTabActivity.this)) {
                    TweetTabActivity.d(TweetTabActivity.this);
                    TweetTabActivity.a(TweetTabActivity.this, false);
                }
            }
        });
    }

    private void f() {
        int n = a.a((Context) this, 18.0f);
        int n2 = a.a((Context) this, 36.0f);
        this.f.setVisibility(4);
        this.n.setVisibility(4);
        com.c.b.a.a(this.i).c(0.0f).b((float) n).a(150).a(new DecelerateInterpolator()).a();
        com.c.b.a.a(this.h).c(0.0f).b((float) n2).a(150).a(new DecelerateInterpolator()).b(100).a();
        com.c.b.a.a(this.j).a(0.0f).a(150).a(new AccelerateDecelerateInterpolator()).a();
        new Handler().postDelayed(new dU(this), 150);
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_tweet_tab);
        this.b(R.string.tweet);
        this.n = this.a().a().findViewById(R.id.ll_mask);
        this.f = (RelativeLayout) this.findViewById(R.id.fab_bg_container);
        this.g = (RelativeLayout) this.findViewById(R.id.fab_container);
        this.findViewById(R.id.ll_activity_container);
        this.h = (LinearLayout) this.findViewById(R.id.ll_artics_container);
        this.findViewById(R.id.ll_comment_container);
        this.i = (LinearLayout) this.findViewById(R.id.ll_tweet_container);
        this.j = (FloatingActionButton) this.findViewById(R.id.fab_activty);
        this.k = (FloatingActionButton) this.findViewById(R.id.fab_article);
        this.l = (FloatingActionButton) this.findViewById(R.id.fab_comment);
        this.m = (FloatingActionButton) this.findViewById(R.id.fab_tweet);
        this.j.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (TweetTabActivity.c(TweetTabActivity.this)) {
                    TweetTabActivity.a(TweetTabActivity.this, false);
                    TweetTabActivity.d(TweetTabActivity.this);
                    TweetTabActivity.e(TweetTabActivity.this).setContentDescription("关闭选项");
                    return;
                }
                TweetTabActivity.f(TweetTabActivity.this);
                TweetTabActivity.a(TweetTabActivity.this, true);
                TweetTabActivity.g(TweetTabActivity.this);
                TweetTabActivity.e(TweetTabActivity.this).setContentDescription("展开选项");
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TweetTabActivity.d(TweetTabActivity.this);
                TweetTabActivity.h(TweetTabActivity.this);
                TweetTabActivity.a(TweetTabActivity.this, false);
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TweetTabActivity.d(TweetTabActivity.this);
                TweetTabActivity.i(TweetTabActivity.this);
                TweetTabActivity.a(TweetTabActivity.this, false);
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TweetTabActivity.d(TweetTabActivity.this);
                TweetTabActivity.j(TweetTabActivity.this);
                TweetTabActivity.a(TweetTabActivity.this, false);
            }
        });
        this.b();
        this.f();
        this.a = (TabHost) this.findViewById(R.id.host);
        this.c = (ViewPager) this.findViewById(R.id.pager);
        this.e = new dV(this, this.getSupportFragmentManager());
        this.c.setOffscreenPageLimit(3);
        this.c.setAdapter(this.e);
        this.c.addOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        int n = this.e.getCount();
        for (int j = 0; j < n; ++j) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + j);
            tabSpec.setContent(this);
            View view = layoutInflater.inflate(R.layout.home_tabhost_item, null);
            ((TextView) view.findViewById(R.id.text)).setText((String) this.e.getPageTitle(j));
            tabSpec.setIndicator(view);
            this.a.addTab(tabSpec);
        }
        if (am.e() == null) {
            this.a.setCurrentTab(1);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override
    public void onPageScrollStateChanged(int n) {
    }

    @Override
    public void onPageScrolled(int n, float f2, int n2) {
        this.a(n, n2);
    }

    @Override
    public void onPageSelected(int n) {
        TabWidget tabWidget = this.a.getTabWidget();
        int n2 = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(393216);
        this.a.setCurrentTab(n);
        tabWidget.setDescendantFocusability(n2);
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.e.getCount()) {
            this.c.setCurrentItem(n, true);
        }
        if (n != 0) {
            this.g.setVisibility(4);
            return;
        }
        this.g.setVisibility(View.VISIBLE);
    }
}
