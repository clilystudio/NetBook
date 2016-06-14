package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.D;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ReviewSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.List;

do;

public class ReviewListActivity
        extends BaseActivity {
    private static final String[] q = new String[]{"all", "xhqh", "wxxx", "dsyn", "lsjs", "yxjj", "khly", "cyjk", "hmzc", "xdyq", "gdyq", "hxyq", "dmtr"};
    private static final int[] r = new int[]{2131034548, 2131034559, 2131034557, 2131034551, 2131034556, 2131034560, 2131034555, 2131034549, 2131034553, 2131034558, 2131034552, 2131034554, 2131034550};
    private dp a;
    private do b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private D i;
    private List<ReviewSummary> j = new ArrayList<ReviewSummary>();
    private TextView k;
    private TextView l;
    private TextView m;
    private ImageView n;
    private ImageView o;
    private ImageView p;
    private String s;
    private String t;
    private String u;
    private boolean v;
    private j w;

    public ReviewListActivity() {
        this.w = new dg(this);
    }

    a(ReviewListActivity reviewListActivity, do do_) {
        reviewListActivity.b = do_;
        return do_;
    }

    f(ReviewListActivity reviewListActivity) {
        return reviewListActivity.b;
    }

    static /* synthetic */ do

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ PopupWindow a(ReviewListActivity var0, int var1_1) {
        if (var1_1 == 0) {
            var27_2 = LayoutInflater.from(var0).inflate(2130903161, null);
            var28_3 = (TextView) var27_2.findViewById(2131493308);
            var29_4 = (TextView) var27_2.findViewById(2131493309);
            if (var0.v) {
                var29_4.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.s.equals("all")) {
                var28_3.setTextColor(var0.getResources().getColor(2131427468));
            }
            var30_5 = var0.a(var27_2);
            var27_2.setOnTouchListener((View.OnTouchListener) new dl(var0, var30_5));
            var28_3.setOnClickListener((View.OnClickListener) new dm(var0, var30_5));
            var29_4.setOnClickListener((View.OnClickListener) new dn(var0, var30_5));
            return var30_5;
        }
        if (var1_1 == 1) {
            var10_6 = LayoutInflater.from(var0).inflate(2130903162, null);
            var11_7 = (TextView) var10_6.findViewById(2131493308);
            var12_8 = (TextView) var10_6.findViewById(2131493309);
            var13_9 = (TextView) var10_6.findViewById(2131493310);
            var14_10 = (TextView) var10_6.findViewById(2131493338);
            var15_11 = (TextView) var10_6.findViewById(2131493339);
            var16_12 = (TextView) var10_6.findViewById(2131493340);
            var17_13 = (TextView) var10_6.findViewById(2131493341);
            var18_14 = (TextView) var10_6.findViewById(2131493342);
            var19_15 = (TextView) var10_6.findViewById(2131493343);
            var20_16 = (TextView) var10_6.findViewById(2131493344);
            var21_17 = (TextView) var10_6.findViewById(2131493345);
            var22_18 = (TextView) var10_6.findViewById(2131493346);
            var23_19 = (TextView) var10_6.findViewById(2131493347);
            if (var0.t.equals(ReviewListActivity.q[0])) {
                var11_7.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[1])) {
                var12_8.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[2])) {
                var13_9.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[3])) {
                var14_10.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[4])) {
                var15_11.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[5])) {
                var16_12.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[6])) {
                var17_13.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[7])) {
                var18_14.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[8])) {
                var19_15.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[9])) {
                var20_16.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[10])) {
                var21_17.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[11])) {
                var22_18.setTextColor(var0.getResources().getColor(2131427468));
            } else if (var0.t.equals(ReviewListActivity.q[12])) {
                var23_19.setTextColor(var0.getResources().getColor(2131427468));
            }
            var24_20 = var0.a(var10_6);
            var25_21 = new cK(var0, var24_20);
            var10_6.setOnTouchListener(var25_21);
            var26_22 = new cL(var0, var24_20);
            var11_7.setOnClickListener(var26_22);
            var12_8.setOnClickListener(new cM(var0, var24_20));
            var13_9.setOnClickListener(new cN(var0, var24_20));
            var14_10.setOnClickListener(new cO(var0, var24_20));
            var15_11.setOnClickListener(new cP(var0, var24_20));
            var16_12.setOnClickListener(new cQ(var0, var24_20));
            var17_13.setOnClickListener(new cR(var0, var24_20));
            var18_14.setOnClickListener(new cS(var0, var24_20));
            var19_15.setOnClickListener(new cT(var0, var24_20));
            var20_16.setOnClickListener(new cV(var0, var24_20));
            var21_17.setOnClickListener(new cW(var0, var24_20));
            var22_18.setOnClickListener(new cX(var0, var24_20));
            var23_19.setOnClickListener(new cY(var0, var24_20));
            return var24_20;
        }
        if (var1_1 != 2) return null;
        var2_23 = LayoutInflater.from(var0).inflate(2130903163, null);
        var3_24 = (TextView) var2_23.findViewById(2131493308);
        var4_25 = (TextView) var2_23.findViewById(2131493309);
        var5_26 = (TextView) var2_23.findViewById(2131493310);
        var6_27 = (TextView) var2_23.findViewById(2131493338);
        var7_28 = var0.u;
        var8_29 = -1;
        switch (var7_28.hashCode()) {
            case -234430277: {
                if (var7_28.equals("updated")) {
                    var8_29 = 0;
                    **break;
                }
                **GOTO lbl108
            }
            case 1028554472: {
                if (var7_28.equals("created")) {
                    var8_29 = 1;
                    **break;
                }
                **GOTO lbl108
            }
            case 805825180: {
                if (var7_28.equals("helpful")) {
                    var8_29 = 2;
                }
            }
            lbl108:
            // 8 sources:
            default:
            {
                **GOTO lbl113
            }
            case 1742524449:
        }
        if (var7_28.equals("comment-count")) {
            var8_29 = 3;
        }
        lbl113:
        // 4 sources:
        switch (var8_29) {
            case 0: {
                var3_24.setTextColor(var0.getResources().getColor(2131427468));
                **break;
            }
            case 1: {
                var4_25.setTextColor(var0.getResources().getColor(2131427468));
                **break;
            }
            case 2: {
                var5_26.setTextColor(var0.getResources().getColor(2131427468));
            }
            lbl122:
            // 4 sources:
            default:
            {
                **GOTO lbl126
            }
            case 3:
        }
        var6_27.setTextColor(var0.getResources().getColor(2131427468));
        lbl126:
        // 2 sources:
        var9_30 = var0.a(var2_23);
        var2_23.setOnTouchListener(new cZ(var0, var9_30));
        var3_24.setOnClickListener((View.OnClickListener) new da(var0, var9_30));
        var4_25.setOnClickListener((View.OnClickListener) new db(var0, var9_30));
        var5_26.setOnClickListener((View.OnClickListener) new dc(var0, var9_30));
        var6_27.setOnClickListener((View.OnClickListener) new dd(var0, var9_30));
        return var9_30;
    }

    static /* synthetic */ dp a(ReviewListActivity reviewListActivity, dp dp2) {
        reviewListActivity.a = dp2;
        return dp2;
    }

    static /* synthetic */ String a(ReviewListActivity reviewListActivity, String string) {
        reviewListActivity.s = string;
        return string;
    }

    static /* synthetic */ void a(ReviewListActivity reviewListActivity) {
        reviewListActivity.startActivity(new Intent(reviewListActivity, AddReviewActivity.class));
    }

    static /* synthetic */ void a(ReviewListActivity reviewListActivity, PopupWindow popupWindow, int n) {
        popupWindow.dismiss();
        reviewListActivity.t = q[n];
        reviewListActivity.l.setText(r[n]);
        reviewListActivity.c.setRefreshing();
    }

    static /* synthetic */ boolean a(ReviewListActivity reviewListActivity, boolean bl) {
        reviewListActivity.v = bl;
        return bl;
    }

    static /* synthetic */ ImageView b(ReviewListActivity reviewListActivity) {
        return reviewListActivity.n;
    }

    static /* synthetic */ String b(ReviewListActivity reviewListActivity, String string) {
        reviewListActivity.u = string;
        return string;
    }

    static /* synthetic */ ImageView c(ReviewListActivity reviewListActivity) {
        return reviewListActivity.o;
    }

    static /* synthetic */ ImageView d(ReviewListActivity reviewListActivity) {
        return reviewListActivity.p;
    }

    static /* synthetic */ TextView e(ReviewListActivity reviewListActivity) {
        return reviewListActivity.h;
    }

    static /* synthetic */ do

    static /* synthetic */ String g(ReviewListActivity reviewListActivity) {
        return reviewListActivity.s;
    }

    static /* synthetic */ String h(ReviewListActivity reviewListActivity) {
        return reviewListActivity.t;
    }

    static /* synthetic */ String i(ReviewListActivity reviewListActivity) {
        return reviewListActivity.u;
    }

    static /* synthetic */ dp j(ReviewListActivity reviewListActivity) {
        return reviewListActivity.a;
    }

    static /* synthetic */ ListView k(ReviewListActivity reviewListActivity) {
        return reviewListActivity.e;
    }

    static /* synthetic */ List l(ReviewListActivity reviewListActivity) {
        return reviewListActivity.j;
    }

    static /* synthetic */ TextView m(ReviewListActivity reviewListActivity) {
        return reviewListActivity.k;
    }

    static /* synthetic */ PullToRefreshListView n(ReviewListActivity reviewListActivity) {
        return reviewListActivity.c;
    }

    static /* synthetic */ TextView o(ReviewListActivity reviewListActivity) {
        return reviewListActivity.m;
    }

    static /* synthetic */ boolean p(ReviewListActivity reviewListActivity) {
        return reviewListActivity.v;
    }

    static /* synthetic */ b q(ReviewListActivity reviewListActivity) {
        return reviewListActivity.d;
    }

    static /* synthetic */ View r(ReviewListActivity reviewListActivity) {
        return reviewListActivity.g;
    }

    static /* synthetic */ View s(ReviewListActivity reviewListActivity) {
        return reviewListActivity.f;
    }

    static /* synthetic */ D t(ReviewListActivity reviewListActivity) {
        return reviewListActivity.i;
    }

    static /* synthetic */ j u(ReviewListActivity reviewListActivity) {
        return reviewListActivity.w;
    }

    static /* synthetic */ void v(ReviewListActivity reviewListActivity) {
        reviewListActivity.h.setVisibility(0);
        reviewListActivity.h.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u8bc4\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    static /* synthetic */ b w(ReviewListActivity reviewListActivity) {
        return reviewListActivity.d;
    }

    private PopupWindow a(View view) {
        PopupWindow popupWindow = new PopupWindow(view, -1, -1);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener((PopupWindow.OnDismissListener) ((Object) new de(this)));
        return popupWindow;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903090);
        this.a("\u4e66\u8bc4\u533a", 2130837866, new cJ(this), "\u5199\u4e66\u8bc4");
        if (bundle != null) {
            this.s = bundle.getString("savedReviewDur");
            this.t = bundle.getString("savedReviewType");
            this.u = bundle.getString("savedReviewSort");
        } else {
            this.s = "all";
            this.t = q[0];
            this.u = "updated";
        }
        this.g = this.findViewById(2131493085);
        this.h = (TextView) this.findViewById(2131493100);
        this.c = (PullToRefreshListView) this.findViewById(2131493099);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        View view = this.findViewById(2131493105);
        View view2 = this.findViewById(2131493108);
        View view3 = this.findViewById(2131493111);
        this.k = (TextView) this.findViewById(2131493106);
        this.l = (TextView) this.findViewById(2131493109);
        this.m = (TextView) this.findViewById(2131493112);
        this.n = (ImageView) this.findViewById(2131493107);
        this.o = (ImageView) this.findViewById(2131493110);
        this.p = (ImageView) this.findViewById(2131493113);
        view.setOnClickListener(new cU(this));
        view2.setOnClickListener((View.OnClickListener) ((Object) new df(this)));
        view3.setOnClickListener((View.OnClickListener) ((Object) new dh(this)));
        this.e = (ListView) this.c.h();
        this.f = LayoutInflater.from(this).inflate(2130903325, null);
        if (a.j()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.e.addFooterView(this.f);
        this.c.setOnRefreshListener(new di(this));
        this.e.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new dk(this)));
        this.i = new D(this.getLayoutInflater());
        this.e.setAdapter(this.i);
        dp dp2 = this.a = new dp(this, 0);
        Object[] arrobject = new String[]{this.s, this.t, this.u};
        dp2.b(arrobject);
        a.u(this);
        MiStatInterface.recordCountEvent("BookReviewListActivity_Opened",null);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.c.setRefreshing();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("savedReviewDur", this.s);
        bundle.putString("savedReviewType", this.t);
        bundle.putString("savedReviewSort", this.u);
    }
}
