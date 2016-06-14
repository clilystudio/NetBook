package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.o;
import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class GirlTopicListActivity extends BaseActivity {
    private bJ a;
    private bI b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private o i;
    private List<GirlTopicSummary> j = new ArrayList<GirlTopicSummary>();
    private TextView k;
    private TextView l;
    private ImageView m;
    private ImageView n;
    private String o;
    private String p;
    private boolean q;
    private j r;

    public GirlTopicListActivity() {
        this.r = new by(this);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ PopupWindow a(GirlTopicListActivity var0, boolean var1_1) {
        if (var1_1) {
            var9_2 = LayoutInflater.from(var0).inflate(2130903155, null);
            var10_3 = (TextView) var9_2.findViewById(2131493308);
            var11_4 = (TextView) var9_2.findViewById(2131493309);
            if (var0.q) {
                var11_4.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.o.equals("all")) {
                var10_3.setTextColor(var0.getResources().getColor(2131427468));
            }
            var12_5 = var0.a(var9_2);
            var9_2.setOnTouchListener(new bE(var0, var12_5));
            var10_3.setOnClickListener(new bF(var0, var12_5));
            var11_4.setOnClickListener(new bG(var0, var12_5));
            return var12_5;
        }
        var2_6 = LayoutInflater.from(var0).inflate(2130903156, null);
        var3_7 = (TextView) var2_6.findViewById(2131493308);
        var4_8 = (TextView) var2_6.findViewById(2131493309);
        var5_9 = (TextView) var2_6.findViewById(2131493310);
        var6_10 = var0.p;
        var7_11 = -1;
        switch (var6_10.hashCode()) {
            case -234430277: {
                if (var6_10.equals("updated")) {
                    var7_11 = 0;
                    **break;
                }
                **GOTO lbl30
            }
            case 1028554472: {
                if (var6_10.equals("created")) {
                    var7_11 = 1;
                }
            }
            lbl30:
            // 6 sources:
            default:
            {
                **GOTO lbl35
            }
            case 1742524449:
        }
        if (var6_10.equals("comment-count")) {
            var7_11 = 2;
        }
        lbl35:
        // 4 sources:
        switch (var7_11) {
            case 0: {
                var3_7.setTextColor(var0.getResources().getColor(2131427468));
                **break;
            }
            case 1: {
                var4_8.setTextColor(var0.getResources().getColor(2131427468));
            }
            lbl41:
            // 3 sources:
            default:
            {
                **GOTO lbl45
            }
            case 2:
        }
        var5_9.setTextColor(var0.getResources().getColor(2131427468));
        lbl45:
        // 2 sources:
        var8_12 = var0.a(var2_6);
        var2_6.setOnTouchListener(new bH(var0, var8_12));
        var3_7.setOnClickListener((View.OnClickListener) new bu(var0, var8_12));
        var4_8.setOnClickListener((View.OnClickListener) new bv(var0, var8_12));
        var5_9.setOnClickListener((View.OnClickListener) new bw(var0, var8_12));
        return var8_12;
    }

    static /* synthetic */ bI a(GirlTopicListActivity girlTopicListActivity, bI bI2) {
        girlTopicListActivity.b = bI2;
        return bI2;
    }

    static /* synthetic */ bJ a(GirlTopicListActivity girlTopicListActivity, bJ bJ2) {
        girlTopicListActivity.a = bJ2;
        return bJ2;
    }

    static /* synthetic */ String a(GirlTopicListActivity girlTopicListActivity, String string) {
        girlTopicListActivity.o = string;
        return string;
    }

    static /* synthetic */ void a(GirlTopicListActivity girlTopicListActivity) {
        if (am.e().getUser().getLv() < 4) {
            e.a((Activity) girlTopicListActivity, (int) 2131034393);
            return;
        }
        new ds((Context) girlTopicListActivity).c("girl").a().a();
    }

    static /* synthetic */ ImageView b(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.m;
    }

    static /* synthetic */ String b(GirlTopicListActivity girlTopicListActivity, String string) {
        girlTopicListActivity.p = string;
        return string;
    }

    static /* synthetic */ boolean b(GirlTopicListActivity girlTopicListActivity, boolean bl) {
        girlTopicListActivity.q = bl;
        return bl;
    }

    static /* synthetic */ ImageView c(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.n;
    }

    static /* synthetic */ TextView d(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.h;
    }

    static /* synthetic */ bI e(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.b;
    }

    static /* synthetic */ String f(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.o;
    }

    static /* synthetic */ String g(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.p;
    }

    static /* synthetic */ bJ h(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.a;
    }

    static /* synthetic */ ListView i(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.e;
    }

    static /* synthetic */ List j(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.j;
    }

    static /* synthetic */ TextView k(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.k;
    }

    static /* synthetic */ PullToRefreshListView l(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.c;
    }

    static /* synthetic */ TextView m(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.l;
    }

    static /* synthetic */ boolean n(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.q;
    }

    static /* synthetic */ View o(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.g;
    }

    static /* synthetic */ View p(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.f;
    }

    static /* synthetic */ o q(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.i;
    }

    static /* synthetic */ j r(GirlTopicListActivity girlTopicListActivity) {
        return girlTopicListActivity.r;
    }

    static /* synthetic */ void s(GirlTopicListActivity girlTopicListActivity) {
        girlTopicListActivity.h.setVisibility(0);
        girlTopicListActivity.h.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u5973\u751f\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    private PopupWindow a(View view) {
        PopupWindow popupWindow = new PopupWindow(view, -1, -1);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener((PopupWindow.OnDismissListener) ((Object) new bx(this)));
        return popupWindow;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903104);
        this.a("\u5973\u751f\u533a", 2130837866, (aa) ((Object) new bt(this)), "\u7f16\u8f91\u8bdd\u9898");
        if (bundle != null) {
            this.o = bundle.getString("savedGirlDuration");
            this.p = bundle.getString("savedGirlSort");
        } else {
            this.o = "all";
            this.p = "updated";
        }
        this.g = this.findViewById(2131493085);
        this.h = (TextView) this.findViewById(2131493100);
        this.c = (PullToRefreshListView) this.findViewById(2131493099);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        View view = this.findViewById(2131493376);
        View view2 = this.findViewById(2131493380);
        this.k = (TextView) this.findViewById(2131493378);
        this.l = (TextView) this.findViewById(2131493381);
        this.m = (ImageView) this.findViewById(2131493379);
        this.n = (ImageView) this.findViewById(2131493382);
        view.setOnClickListener((View.OnClickListener) ((Object) new bz(this)));
        view2.setOnClickListener(new bA(this));
        this.e = (ListView) this.c.h();
        if (a.j()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.f = LayoutInflater.from(this).inflate(2130903325, null);
        this.f.setVisibility(8);
        this.e.addFooterView(this.f);
        this.c.setOnRefreshListener(new bB(this));
        this.e.setOnItemClickListener(new bD(this));
        this.i = new o(this.getLayoutInflater());
        this.e.setAdapter((ListAdapter) ((Object) this.i));
        bJ bJ2 = this.a = new bJ(this, 0);
        String[] arrstring = new String[]{this.o, this.p};
        bJ2.b(arrstring);
        a.u(this);
        b.a(this, "GirlTopicListActivity_Opened");
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.c.setRefreshing();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("savedGirlDuration", this.o);
        bundle.putString("savedGirlSort", this.p);
    }
}
