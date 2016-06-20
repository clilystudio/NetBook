package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.D;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ReviewSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.List;

do;

public class ReviewListActivity extends BaseActivity {
    private static final String[] q = new String[]{"all", "xhqh", "wxxx", "dsyn", "lsjs", "yxjj", "khly", "cyjk", "hmzc", "xdyq", "gdyq", "hxyq", "dmtr"};
    private static final int[] r = new int[]{R.string.type_all, R.string.type_xhqh, R.string.type_wxxx, R.string.type_dsyn, R.string.type_lsjs, R.string.type_yxjj, R.string.type_khly, R.string.type_cyjk, R.string.type_hmzc, R.string.type_xdyq, R.string.type_gdyq, R.string.type_hxyq, R.string.type_dmtr};
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
    static /* synthetic */ PopupWindow a(final ReviewListActivity var0, int var1_1) {
        if (var1_1 == 0) {
            View var27_2 = LayoutInflater.from(var0).inflate(R.layout.book_review_popupwindow_left, null);
            TextView  var28_3 = (TextView) var27_2.findViewById(R.id.text_item0);
            TextView var29_4 = (TextView) var27_2.findViewById(R.id.text_item1);
            if (var0.v) {
                var29_4.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.s.equals("all")) {
                var28_3.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            final PopupWindow var30_5 = var0.a(var27_2);
            var27_2.setOnTouchListener((View.OnTouchListener) new dl(var0, var30_5));
            var28_3.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    var30_5.dismiss();
                    ReviewListActivity.m(var0).setText("全部");
                    ReviewListActivity.a(var0, "all");
                    ReviewListActivity.a(var0, false);
                    ReviewListActivity.n(var0).setRefreshing();
                }
            });
            var29_4.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    var30_5.dismiss();
                    ReviewListActivity.m(var0).setText("精品");
                    ReviewListActivity.a(var0, "all");
                    ReviewListActivity.a(var0, true);
                    ReviewListActivity.n(var0).setRefreshing();
                }
            });
            return var30_5;
        }
        if (var1_1 == 1) {
          View  var10_6 = LayoutInflater.from(var0).inflate(R.layout.book_review_popupwindow_mid, null);
            TextView  var11_7 = (TextView) var10_6.findViewById(R.id.text_item0);
            TextView   var12_8 = (TextView) var10_6.findViewById(R.id.text_item1);
            TextView   var13_9 = (TextView) var10_6.findViewById(R.id.text_item2);
            TextView   var14_10 = (TextView) var10_6.findViewById(R.id.text_item3);
            TextView  var15_11 = (TextView) var10_6.findViewById(R.id.text_item4);
            TextView  var16_12 = (TextView) var10_6.findViewById(R.id.text_item5);
            TextView  var17_13 = (TextView) var10_6.findViewById(R.id.text_item6);
            TextView    var18_14 = (TextView) var10_6.findViewById(R.id.text_item7);
            TextView    var19_15 = (TextView) var10_6.findViewById(R.id.text_item8);
            TextView    var20_16 = (TextView) var10_6.findViewById(R.id.text_item9);
            TextView     var21_17 = (TextView) var10_6.findViewById(R.id.text_item10);
            TextView     var22_18 = (TextView) var10_6.findViewById(R.id.text_item11);
            TextView    var23_19 = (TextView) var10_6.findViewById(R.id.text_item12);
            if (var0.t.equals(ReviewListActivity.q[0])) {
                var11_7.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[1])) {
                var12_8.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[2])) {
                var13_9.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[3])) {
                var14_10.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[4])) {
                var15_11.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[5])) {
                var16_12.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[6])) {
                var17_13.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[7])) {
                var18_14.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[8])) {
                var19_15.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[9])) {
                var20_16.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[10])) {
                var21_17.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[11])) {
                var22_18.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.t.equals(ReviewListActivity.q[12])) {
                var23_19.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            final PopupWindow  var24_20 = var0.a(var10_6);
            cK var25_21 = new cK(var0, var24_20);
            var10_6.setOnTouchListener(var25_21);
            var11_7.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0,var24_20, 0);
                }
            });
            var12_8.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 1);
                }
            });
            var13_9.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 2);
                }
            });
            var14_10.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 3);
                }
            });
            var15_11.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 4);
                }
            });
            var16_12.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 5);
                }
            });
            var17_13.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 6);
                }
            });
            var18_14.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 7);
                }
            });
            var19_15.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 8);
                }
            });
            var20_16.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 9);
                }
            });
            var21_17.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 10);
                }
            });
            var22_18.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 11);
                }
            });
            var23_19.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    ReviewListActivity.a(var0, var24_20, 12);
                }
            });
            return var24_20;
        }
        if (var1_1 != 2) return null;
       View var2_23 = LayoutInflater.from(var0).inflate(R.layout.book_review_popupwindow_right, null);
        TextView   var3_24 = (TextView) var2_23.findViewById(R.id.text_item0);
        TextView  var4_25 = (TextView) var2_23.findViewById(R.id.text_item1);
        TextView  var5_26 = (TextView) var2_23.findViewById(R.id.text_item2);
        TextView  var6_27 = (TextView) var2_23.findViewById(R.id.text_item3);
        int var8_29 = -1;
        switch (var0.u.hashCode()) {
            case -234430277: {
                if (var0.u.equals("updated")) {
                    var8_29 = 0;
                    **break;
                }
                **GOTO lbl108
            }
            case 1028554472: {
                if (var0.u.equals("created")) {
                    var8_29 = 1;
                    **break;
                }
                **GOTO lbl108
            }
            case 805825180: {
                if (var0.u.equals("helpful")) {
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
        if (var0.u.equals("comment-count")) {
            var8_29 = 3;
        }
        lbl113:
        // 4 sources:
        switch (var8_29) {
            case 0: {
                var3_24.setTextColor(var0.getResources().getColor(R.color.popup_red));
                **break;
            }
            case 1: {
                var4_25.setTextColor(var0.getResources().getColor(R.color.popup_red));
                **break;
            }
            case 2: {
                var5_26.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            lbl122:
            // 4 sources:
            default:
            {
                **GOTO lbl126
            }
            case 3:
                var6_27.setTextColor(var0.getResources().getColor(R.color.popup_red));
        }
        final PopupWindow  var9_30 = var0.a(var2_23);
        var2_23.setOnTouchListener(new cZ(var0, var9_30));
        var3_24.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                var9_30.dismiss();
                ReviewListActivity.o(var0).setText(R.string.post_sort_default);
                ReviewListActivity.b(var0, "updated");
                ReviewListActivity.n(var0).setRefreshing();
            }
        });
        var4_25.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                var9_30.dismiss();
                ReviewListActivity.o(var0).setText(R.string.post_sort_create);
                ReviewListActivity.b(var0, "created");
                ReviewListActivity.n(var0).setRefreshing();
            }
        });
        var5_26.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                var9_30.dismiss();
                ReviewListActivity.o(var0).setText(R.string.post_sort_useful);
                ReviewListActivity.b(var0, "helpful");
                ReviewListActivity.n(var0).setRefreshing();
            }
        });
        var6_27.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                var9_30.dismiss();
                ReviewListActivity.o(var0).setText(R.string.post_sort_reply_count);
                ReviewListActivity.b(var0, "comment-count");
                ReviewListActivity.n(var0).setRefreshing();
            }
        });
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
        reviewListActivity.h.setVisibility(View.VISIBLE);
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
        this.setContentView(R.layout.activity_book_review_list);
        this.a("\u4e66\u8bc4\u533a", R.drawable.ic_action_edit, new cJ(this), "\u5199\u4e66\u8bc4");
        if (bundle != null) {
            this.s = bundle.getString("savedReviewDur");
            this.t = bundle.getString("savedReviewType");
            this.u = bundle.getString("savedReviewSort");
        } else {
            this.s = "all";
            this.t = q[0];
            this.u = "updated";
        }
        this.g = this.findViewById(R.id.pb_loading);
        this.h = (TextView) this.findViewById(R.id.empty_text);
        this.c = (PullToRefreshListView) this.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        View view = this.findViewById(R.id.book_review_top_left);
        View view2 = this.findViewById(R.id.book_review_top_mid);
        View view3 = this.findViewById(R.id.book_review_top_right);
        this.k = (TextView) this.findViewById(R.id.book_review_top_left_title);
        this.l = (TextView) this.findViewById(R.id.book_review_top_mid_title);
        this.m = (TextView) this.findViewById(R.id.book_review_top_right_title);
        this.n = (ImageView) this.findViewById(R.id.book_review_top_left_arrow);
        this.o = (ImageView) this.findViewById(R.id.book_review_top_mid_arrow);
        this.p = (ImageView) this.findViewById(R.id.book_review_top_right_arrow);
        view.setOnClickListener(new cU(this));
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReviewListActivity.a(ReviewListActivity.this, 1).showAsDropDown(v, 0, 1);
                ReviewListActivity.c(ReviewListActivity.this).setImageDrawable(ReviewListActivity.this.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
            }
        });
        view3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReviewListActivity.a(ReviewListActivity.this, 2).showAsDropDown(v, 0, 1);
                ReviewListActivity.c(ReviewListActivity.this).setImageDrawable(ReviewListActivity.this.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
            }
        });
        this.e = (ListView) this.c.h();
        this.f = LayoutInflater.from(this).inflate(R.layout.loading_item, null);
        if (a.j()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.e.addFooterView(this.f);
        this.c.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                ReviewListActivity.this.h.setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (!am.a(ReviewListActivity.this.a)) {
                            ReviewListActivity.this.a.cancel(true);
                        }
                        ReviewListActivity.a(ReviewListActivity.this, new dp(ReviewListActivity.this, (byte)0));
                        dp dp2 = ReviewListActivity.this.a;
                        String[] arrstring = new String[]{ReviewListActivity.this.s, ReviewListActivity.this.t, ReviewListActivity.this.u};
                        dp2.b(arrstring);
                   }
                }, 1000);
            }
        });
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
