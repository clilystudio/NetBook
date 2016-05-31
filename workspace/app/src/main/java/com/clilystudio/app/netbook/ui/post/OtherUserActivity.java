package com.clilystudio.app.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.adapter.G;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.event.t;
import com.clilystudio.app.netbook.model.Follower;
import com.clilystudio.app.netbook.model.Tweet;
import com.clilystudio.app.netbook.ui.BaseActivity;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.squareup.a.b;

import java.util.ArrayList;
import java.util.List;

public class OtherUserActivity extends BaseActivity {
    private ck A;
    private j B = new ch(this);
    private cl a;
    private LayoutInflater b;
    private PullToRefreshListView c;
    private View e;
    private SmartImageView f;
    private ImageView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private Button k;
    private ListView l;
    private View m;
    private View n;
    private TextView o;
    private G p;
    private List<Tweet> q = new ArrayList();
    private String r;
    private String s;
    private int t;
    private int u;
    private List<Follower> v;
    private List<Follower> w;
    private Follower x;
    private int y = 0;
    private cj z;

    public static Intent a(Context paramContext) {
        return new d_IntentFactory().a_setClass(paramContext, OtherUserActivity.class).a();
    }

    private void b() {
        int i1 = this.t;
        if (this.w != null)
            i1 = this.w.size();
        this.j.setText(i1);
    }

    private void f() {
        switch (this.y) {
            default:
                return;
            case 2:
                this.k.setText("编辑");
                return;
            case 0:
                this.k.setText("关注");
                return;
            case 1:
        }
        this.k.setText("取消关注");
    }

    private void g() {
        cm localcm = new cm(this, (byte) 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.r;
        localcm.b(arrayOfString);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        i.a().a(this);
        setContentView(2130903211);
        this.b = LayoutInflater.from(this);
        this.r = getIntent().getExtras().getString("USER_ID");
        this.s = getIntent().getExtras().getString("USER_NAME");
        this.n = findViewById(2131493085);
        this.o = ((TextView) findViewById(2131493100));
        this.c = ((PullToRefreshListView) findViewById(2131493099));
        this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.l = ((ListView) this.c.h());
        this.e = this.b.inflate(2130903253, null);
        this.l.addHeaderView(this.e);
        this.m = this.b.inflate(2130903325, null);
        this.l.addFooterView(this.m);
        if (a.j())
            this.l.setFooterDividersEnabled(false);
        b_initContentView("详情");
        if (am_CommonUtils.e() != null) {
            if (am_CommonUtils.e().getUser().getId().equals(this.r)) {
                this.y = 2;
                return;
            }
            ci localci = new ci(this, (byte) 0);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = am_CommonUtils.e().getUser().getId();
            arrayOfString[1] = this.r;
            localci.execute(arrayOfString);
            return;
        }
        this.y = 0;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.z != null)
            this.z.cancel(true);
        if (this.A != null)
            this.A.cancel(true);
        i.a().b(this);
    }

    @l
    public void onLoginedEvent(t paramt) {
        ci localci = new ci(this, (byte) 0);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = am_CommonUtils.e().getUser().getId();
        arrayOfString[1] = this.r;
        localci.execute(arrayOfString);
    }

    protected void onStart() {
        super.onStart();
        this.f = ((SmartImageView) this.e.findViewById(2131493591));
        this.h = ((TextView) this.e.findViewById(2131493593));
        this.g = ((ImageView) this.e.findViewById(2131493594));
        this.i = ((TextView) this.e.findViewById(2131493596));
        this.j = ((TextView) this.e.findViewById(2131493599));
        this.k = ((Button) this.e.findViewById(2131493592));
        this.h.setText(this.s);
        f();
        this.k.setOnClickListener(new cb(this));
        this.i.setOnClickListener(new cd(this));
        this.j.setOnClickListener(new cf(this));
        cn localcn = new cn(this, new cc(this));
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.r;
        localcn.b(arrayOfString);
        this.c.setOnRefreshListener(new bZ(this));
        this.p = new G(this, false, false);
        this.p.a(this.q);
        this.l.setAdapter(this.p);
        g();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.OtherUserActivity
 * JD-Core Version:    0.6.2
 */