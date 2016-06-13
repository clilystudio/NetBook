package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.l;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class CommonPostListActivity
        extends BaseActivity {
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
    private List<DiscussSummary> o = new ArrayList<DiscussSummary>();
    private l p;
    private boolean q;
    private String r;
    private j s;

    public CommonPostListActivity() {
        this.s = new aX(this);
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, CommonPostListActivity.class).a("post_block_key", string).a();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ PopupWindow a(CommonPostListActivity var0, int var1_1) {
        if (var1_1 == 0) {
            var10_2 = LayoutInflater.from(var0).inflate(2130903203, null);
            var11_3 = (TextView) var10_2.findViewById(2131493308);
            var12_4 = (TextView) var10_2.findViewById(2131493309);
            if (var0.q) {
                var12_4.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.a.equals("all")) {
                var11_3.setTextColor(var0.getResources().getColor(2131427468));
            }
            var13_5 = var0.a(var10_2);
            var10_2.setOnTouchListener((View.OnTouchListener) new bd(var0, var13_5));
            var11_3.setOnClickListener((View.OnClickListener) new be(var0, var13_5));
            var12_4.setOnClickListener(new bf(var0, var13_5));
            return var13_5;
        }
        var2_6 = null;
        if (var1_1 != 1) return var2_6;
        var3_7 = LayoutInflater.from(var0).inflate(2130903204, null);
        var4_8 = (TextView) var3_7.findViewById(2131493308);
        var5_9 = (TextView) var3_7.findViewById(2131493309);
        var6_10 = (TextView) var3_7.findViewById(2131493310);
        var7_11 = var0.b;
        var8_12 = -1;
        switch (var7_11.hashCode()) {
            case -234430277: {
                if (var7_11.equals("updated")) {
                    var8_12 = 0;
                    **break;
                }
                **GOTO lbl32
            }
            case 1028554472: {
                if (var7_11.equals("created")) {
                    var8_12 = 1;
                }
            }
            lbl32:
            // 6 sources:
            default:
            {
                **GOTO lbl37
            }
            case 1742524449:
        }
        if (var7_11.equals("comment-count")) {
            var8_12 = 2;
        }
        lbl37:
        // 4 sources:
        switch (var8_12) {
            case 0: {
                var4_8.setTextColor(var0.getResources().getColor(2131427468));
                **break;
            }
            case 1: {
                var5_9.setTextColor(var0.getResources().getColor(2131427468));
            }
            lbl43:
            // 3 sources:
            default:
            {
                **GOTO lbl47
            }
            case 2:
        }
        var6_10.setTextColor(var0.getResources().getColor(2131427468));
        lbl47:
        // 2 sources:
        var9_13 = var0.a(var3_7);
        var3_7.setOnTouchListener((View.OnTouchListener) new bg(var0, var9_13));
        var4_8.setOnClickListener(new aT(var0, var9_13));
        var5_9.setOnClickListener(new aU(var0, var9_13));
        var6_10.setOnClickListener(new aV(var0, var9_13));
        return var9_13;
    }

    static /* synthetic */ bh a(CommonPostListActivity commonPostListActivity, bh bh2) {
        commonPostListActivity.m = bh2;
        return bh2;
    }

    static /* synthetic */ bi a(CommonPostListActivity commonPostListActivity, bi bi2) {
        commonPostListActivity.l = bi2;
        return bi2;
    }

    static /* synthetic */ String a(CommonPostListActivity commonPostListActivity, String string) {
        commonPostListActivity.a = string;
        return string;
    }

    static /* synthetic */ void a(CommonPostListActivity commonPostListActivity) {
        new ds((Context) commonPostListActivity).c(commonPostListActivity.r).a().a();
    }

    static /* synthetic */ boolean a(CommonPostListActivity commonPostListActivity, boolean bl) {
        commonPostListActivity.q = bl;
        return bl;
    }

    static /* synthetic */ TextView b(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.k;
    }

    static /* synthetic */ String b(CommonPostListActivity commonPostListActivity, String string) {
        commonPostListActivity.b = string;
        return string;
    }

    static /* synthetic */ bh c(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.m;
    }

    static /* synthetic */ String d(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.a;
    }

    static /* synthetic */ String e(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.b;
    }

    static /* synthetic */ bi f(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.l;
    }

    static /* synthetic */ ListView g(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.i;
    }

    static /* synthetic */ List h(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.o;
    }

    static /* synthetic */ TextView i(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.c;
    }

    static /* synthetic */ PullToRefreshListView j(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.f;
    }

    static /* synthetic */ TextView k(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.e;
    }

    static /* synthetic */ ImageView l(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.g;
    }

    static /* synthetic */ ImageView m(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.h;
    }

    static /* synthetic */ String n(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.r;
    }

    static /* synthetic */ boolean o(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.q;
    }

    static /* synthetic */ View p(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.n;
    }

    static /* synthetic */ View q(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.j;
    }

    static /* synthetic */ l r(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.p;
    }

    static /* synthetic */ j s(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.s;
    }

    static /* synthetic */ void t(CommonPostListActivity commonPostListActivity) {
        commonPostListActivity.f.setVisibility(8);
        commonPostListActivity.k.setVisibility(0);
        commonPostListActivity.k.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u5e16\u5b50\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    private PopupWindow a(View view) {
        PopupWindow popupWindow = new PopupWindow(view, -1, -1);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener(new aW(this));
        return popupWindow;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        String string;
        String string2;
        super.onCreate(bundle);
        this.setContentView(2130903096);
        this.r = this.getIntent().getStringExtra("post_block_key");
        if (this.r == null) {
            this.r = "ramble";
        }
        if ("android-feedback".equals(this.r)) {
            string2 = "\u610f\u89c1\u53cd\u9988\u533a";
            string = "\u5199\u53cd\u9988";
        } else {
            string2 = "\u7efc\u5408\u8ba8\u8bba\u533a";
            string = "\u5199\u8bc4\u8bba";
        }
        this.a(string2, 2130837866, new aS(this), string);
        if (bundle != null) {
            this.a = bundle.getString("savedReviewDur");
            this.b = bundle.getString("savedReviewSort");
        }
        this.f = (PullToRefreshListView) this.findViewById(2131493099);
        this.f.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.n = this.findViewById(2131493085);
        this.k = (TextView) this.findViewById(2131493100);
        ImageView imageView = (ImageView) this.findViewById(2131493379);
        ImageView imageView2 = (ImageView) this.findViewById(2131493382);
        this.g = imageView;
        this.h = imageView2;
        this.c = (TextView) this.findViewById(2131493378);
        this.e = (TextView) this.findViewById(2131493381);
        this.findViewById(2131493376).setOnClickListener(new aY(this, imageView));
        this.findViewById(2131493380).setOnClickListener(new aZ(this, imageView2));
        this.i = (ListView) this.f.h();
        this.j = LayoutInflater.from(this).inflate(2130903325, null);
        if (a.j()) {
            this.i.setFooterDividersEnabled(false);
        }
        this.i.addFooterView(this.j);
        this.j.setVisibility(8);
        this.f.setOnRefreshListener(new ba(this));
        this.i.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new bc(this)));
        this.p = new l(this.getLayoutInflater());
        this.i.setAdapter((ListAdapter) ((Object) this.p));
        bi bi2 = this.l = new bi(this, 0);
        String[] arrstring = new String[]{this.a, this.b};
        bi2.b(arrstring);
        a.u(this);
        String string3 = this.r;
        if ("ramble".equals(string3)) {
            b.a(this, "DiscussListActivity_Opened");
            return;
        } else {
            if (!"android-feedback".equals(string3)) return;
            {
                b.a(this, "CommonPostListActivity_Feedback_Opened");
                return;
            }
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f.setRefreshing();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("savedReviewDur", this.a);
        bundle.putString("savedReviewSort", this.b);
    }
}
