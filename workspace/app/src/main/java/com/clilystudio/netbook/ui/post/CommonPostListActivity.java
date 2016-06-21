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

import com.clilystudio.netbook.*;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.PostFlag;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.umeng.a.b;

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
    private List<DiscussSummary> o = new ArrayList<DiscussSummary>();
    private com.clilystudio.netbook.util.W<DiscussSummary> p;
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
    static /* synthetic */ PopupWindow a(final CommonPostListActivity var0, int var1_1) {
        if (var1_1 == 0) {
            View var10_2 = LayoutInflater.from(var0).inflate(R.layout.discuss_popupwindow_left, null);
            TextView  var11_3 = (TextView) var10_2.findViewById(R.id.text_item0);
            TextView var12_4 = (TextView) var10_2.findViewById(R.id.text_item1);
            if (var0.q) {
                var12_4.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.a.equals("all")) {
                var11_3.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            final PopupWindow  var13_5 = var0.a(var10_2);
            var10_2.setOnTouchListener((View.OnTouchListener) new bd(var0, var13_5));
            var11_3.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    var13_5.dismiss();
                    CommonPostListActivity.a(var0, false);
                    CommonPostListActivity.i(var0).setText("全部");
                    CommonPostListActivity.a(var0, "all");
                    CommonPostListActivity.j(var0).setVisibility(View.VISIBLE);
                    CommonPostListActivity.j(var0).setRefreshing();
                }
            });
            var12_4.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    var13_5.dismiss();
                    CommonPostListActivity.a(var0, true);
                    CommonPostListActivity.i(var0).setText("精品");
                    CommonPostListActivity.a(var0, "all");
                    CommonPostListActivity.j(var0).setVisibility(View.VISIBLE);
                    CommonPostListActivity.j(var0).setRefreshing();
                }
            });
            return var13_5;
        }
        var2_6 = null;
        if (var1_1 != 1) return var2_6;
       View var3_7 = LayoutInflater.from(var0).inflate(R.layout.discuss_popupwindow_right, null);
        TextView   var4_8 = (TextView) var3_7.findViewById(R.id.text_item0);
        TextView   var5_9 = (TextView) var3_7.findViewById(R.id.text_item1);
        TextView    var6_10 = (TextView) var3_7.findViewById(R.id.text_item2);
        var7_11 = var0.b;
      int   var8_12 = -1;
        switch ( var0.b.hashCode()) {
            case -234430277: {
                if ( var0.b.equals("updated")) {
                    var8_12 = 0;
                    **break;
                }
                **GOTO lbl32
            }
            case 1028554472: {
                if ( var0.b.equals("created")) {
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
                if (var0.b.equals("comment-count")) {
                    var8_12 = 2;
                }
        }
         lbl37:
        // 4 sources:
        switch (var8_12) {
            case 0: {
                var4_8.setTextColor(var0.getResources().getColor(R.color.popup_red));
                **break;
            }
            case 1: {
                var5_9.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            lbl43:
            // 3 sources:
            default:
            {
                **GOTO lbl47
            }
            case 2:
                final PopupWindow  var9_13 = var0.a(var3_7);
                var3_7.setOnTouchListener((View.OnTouchListener) new bg(var0, var9_13));
                var4_8.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        var9_13.dismiss();
                        CommonPostListActivity.k(var0).setText("默认排序");
                        CommonPostListActivity.b(var0, "updated");
                        CommonPostListActivity.j(var0).setVisibility(View.VISIBLE);
                        CommonPostListActivity.j(var0).setRefreshing();
                    }
                });
                var5_9.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        var9_13.dismiss();
                        CommonPostListActivity.k(var0).setText("最新发布");
                        CommonPostListActivity.b(var0, "created");
                        CommonPostListActivity.j(var0).setVisibility(View.VISIBLE);
                        CommonPostListActivity.j(var0).setRefreshing();
                    }
                });
                var6_10.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        var9_13.dismiss();
                        CommonPostListActivity.k(var0).setText("最多评论");
                        CommonPostListActivity.b(var0, "comment-count");
                        CommonPostListActivity.j(var0).setVisibility(View.VISIBLE);
                        CommonPostListActivity.j(var0).setRefreshing();
                    }
                });
                return var9_13;
        }
        var6_10.setTextColor(var0.getResources().getColor(R.color.popup_red));
//        lbl47:
        // 2 sources:
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

    static /* synthetic */ W<DiscussSummary> r(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.p;
    }

    static /* synthetic */ j s(CommonPostListActivity commonPostListActivity) {
        return commonPostListActivity.s;
    }

    static /* synthetic */ void t(CommonPostListActivity commonPostListActivity) {
        commonPostListActivity.f.setVisibility(View.GONE);
        commonPostListActivity.k.setVisibility(View.VISIBLE);
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
        this.setContentView(R.layout.activity_discuss_list);
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
        this.a(string2, R.drawable.ic_action_edit, new aS(this), string);
        if (bundle != null) {
            this.a = bundle.getString("savedReviewDur");
            this.b = bundle.getString("savedReviewSort");
        }
        this.f = (PullToRefreshListView) this.findViewById(R.id.ptr_list);
        this.f.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        this.n = this.findViewById(R.id.pb_loading);
        this.k = (TextView) this.findViewById(R.id.empty_text);
        final ImageView imageView = (ImageView) this.findViewById(R.id.community_top_left_arrow);
        final ImageView imageView2 = (ImageView) this.findViewById(R.id.community_top_right_arrow);
        this.g = imageView;
        this.h = imageView2;
        this.c = (TextView) this.findViewById(R.id.community_top_left_title);
        this.e = (TextView) this.findViewById(R.id.community_top_right_title);
        this.findViewById(R.id.community_top_left).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                CommonPostListActivity.a(CommonPostListActivity.this, 0).showAsDropDown(v, 0, 1);
                imageView.setImageDrawable(CommonPostListActivity.this.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
            }
        });
        this.findViewById(R.id.community_top_right).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                CommonPostListActivity.a(CommonPostListActivity.this, 1).showAsDropDown(v, 0, 1);
                imageView2.setImageDrawable(CommonPostListActivity.this.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
            }
        });
        this.i = (ListView) this.f.h();
        this.j = LayoutInflater.from(this).inflate(R.layout.loading_item, null);
        if (a.j()) {
            this.i.setFooterDividersEnabled(false);
        }
        this.i.addFooterView(this.j);
        this.j.setVisibility(View.GONE);
        this.f.setOnRefreshListener(new ba(this));
        this.i.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new bc(this)));
        this.p = new W<DiscussSummary>(this.getLayoutInflater(), R.layout.list_item_post){

            @Override
            protected void a(int var1, final DiscussSummary discussSummary) {
                Author author = discussSummary.getAuthor();
                if (am.m(getLayoutInflater().getContext())) {
                    ((ImageView) this.a(0, ImageView.class)).setImageResource(R.drawable.avatar_default);
                } else {
                    ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
                }
                ((View) this.a(0, ImageView.class)).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        v.getContext().startActivity(com.clilystudio.netbook.util.e.a(v.getContext(),discussSummary.getAuthor()));
                    }
                });
                this.a(1, author.getNickname());
                this.a(2, "lv." + author.getLv());
                this.a(4, discussSummary.getTitle());
                TextView textView = (TextView) this.a(5, TextView.class);
                if ("vote".equals(discussSummary.getType())) {
                    textView.setText(String.valueOf(discussSummary.getVoteCount()));
                    textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_vote, 0, 0, 0);
                } else {
                    textView.setText(String.valueOf(discussSummary.getCommentCount()));
                    textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_message, 0, 0, 0);
                }
                TextView textView2 = (TextView) this.a(6, TextView.class);
                textView2.setVisibility(View.VISIBLE);
                textView2.setText(String.valueOf(discussSummary.likeCount));
                String string = discussSummary.getState();
                PostFlag postFlag = (PostFlag) this.a(8, PostFlag.class);
                if (PostFlag.b(string)) {
                    postFlag.setVisibility(View.VISIBLE);
                    postFlag.a(string);
                    this.a(3, true);
                } else {
                    postFlag.setVisibility(View.GONE);
                    this.a(3, false);
                    this.a(3, t.e(discussSummary.getCreated()));
                }
                ImageView imageView = (ImageView) this.a(7, ImageView.class);
                if (com.clilystudio.netbook.hpay100.a.a.r(getLayoutInflater().getContext(), "community_user_gender_icon_toggle")) {
                    String string2 = author.getGender();
                    if ("male".equals(string2)) {
                        imageView.setVisibility(View.VISIBLE);
                        imageView.setImageLevel(2);
                        return;
                    }
                    if ("female".equals(string2)) {
                        imageView.setVisibility(View.VISIBLE);
                        imageView.setImageLevel(3);
                        return;
                    }
                    imageView.setVisibility(View.VISIBLE);
                    imageView.setImageLevel(4);
                    return;
                }
                String string3 = author.getType();
                if ("official".equals(string3)) {
                    imageView.setVisibility(View.VISIBLE);
                    imageView.setImageLevel(0);
                    return;
                }
                if ("doyen".equals(string3)) {
                    imageView.setVisibility(View.VISIBLE);
                    imageView.setImageLevel(1);
                    return;
                }
                imageView.setVisibility(View.GONE);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.title, R.id.comment_count, R.id.like_count, R.id.avatar_verify, R.id.post_flag};
            }
        };
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
