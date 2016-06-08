package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.adapter.l;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;

import java.util.ArrayList;
import java.util.List;

public class CommonPostListActivity extends BaseActivity {
    private String a = "all";
    private String b = "updated";
    private TextView c;
    private TextView e;
    private PullToRefreshListView f;
    private ImageView g;
    private ImageView h;
    private ListView i;
    private View j;
    private TextView k;
    private bi l;
    private bh m;
    private View n;
    private List<DiscussSummary> o = new ArrayList();
    private l p;
    private boolean q;
    private String r;
    private j s = new aX(this);

    public static Intent a(Context paramContext, String paramString) {
        return new d().a(paramContext, CommonPostListActivity.class).a("post_block_key", paramString).a();
    }

    private PopupWindow a(View paramView) {
        PopupWindow localPopupWindow = new PopupWindow(paramView, -1, -1);
        localPopupWindow.setFocusable(true);
        localPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
        localPopupWindow.setOutsideTouchable(true);
        localPopupWindow.setOnDismissListener(new aW(this));
        return localPopupWindow;
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903096);
        this.r = getIntent().getStringExtra("post_block_key");
        if (this.r == null)
            this.r = "ramble";
        String str1;
        String str2;
        String str3;
        if ("android-feedback".equals(this.r)) {
            str1 = "意见反馈区";
            str2 = "写反馈";
            a(str1, 2130837866, new aS(this), str2);
            if (paramBundle != null) {
                this.a = paramBundle.getString("savedReviewDur");
                this.b = paramBundle.getString("savedReviewSort");
            }
            this.f = ((PullToRefreshListView) findViewById(2131493099));
            this.f.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
            this.n = findViewById(2131493085);
            this.k = ((TextView) findViewById(2131493100));
            ImageView localImageView1 = (ImageView) findViewById(2131493379);
            ImageView localImageView2 = (ImageView) findViewById(2131493382);
            this.g = localImageView1;
            this.h = localImageView2;
            this.c = ((TextView) findViewById(2131493378));
            this.e = ((TextView) findViewById(2131493381));
            findViewById(2131493376).setOnClickListener(new aY(this, localImageView1));
            findViewById(2131493380).setOnClickListener(new aZ(this, localImageView2));
            this.i = ((ListView) this.f.h());
            this.j = LayoutInflater.from(this).inflate(2130903325, null);
            if (a.j())
                this.i.setFooterDividersEnabled(false);
            this.i.addFooterView(this.j);
            this.j.setVisibility(8);
            this.f.setOnRefreshListener(new ba(this));
            this.i.setOnItemClickListener(new bc(this));
            this.p = new l(getLayoutInflater());
            this.i.setAdapter(this.p);
            this.l = new bi(this, 0);
            bi localbi = this.l;
            String[] arrayOfString = new String[2];
            arrayOfString[0] = this.a;
            arrayOfString[1] = this.b;
            localbi.b(arrayOfString);
            a.u(this);
            str3 = this.r;
            if (!"ramble".equals(str3))
                break label464;
            b.a(this, "DiscussListActivity_Opened");
        }
        label464:
        do {
            return;
            str1 = "综合讨论区";
            str2 = "写评论";
            break;
        }
        while (!"android-feedback".equals(str3));
        b.a(this, "CommonPostListActivity_Feedback_Opened");
    }

    protected void onNewIntent(Intent paramIntent) {
        super.onNewIntent(paramIntent);
        this.f.setRefreshing();
    }

    protected void onSaveInstanceState(Bundle paramBundle) {
        super.onSaveInstanceState(paramBundle);
        paramBundle.putString("savedReviewDur", this.a);
        paramBundle.putString("savedReviewSort", this.b);
    }
}

