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

import com.clilystudio.netbook.*;
import com.clilystudio.netbook.adapter.d;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.PostFlag;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class BookHelpListActivity extends BaseActivity {
    private av a;
    private au b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private com.clilystudio.netbook.util.W<BookHelpSummary> i;
    private List<BookHelpSummary> j = new ArrayList<BookHelpSummary>();
    private TextView k;
    private TextView l;
    private ImageView m;
    private ImageView n;
    private String o;
    private String p;
    private boolean q;
    private j r;

    public BookHelpListActivity() {
        this.r = new ak(this);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ PopupWindow a(final BookHelpListActivity var0, boolean var1_1) {
        if (var1_1) {
            View var9_2 = LayoutInflater.from(var0).inflate(R.layout.book_help_popupwindow_left, null);
            TextView  var10_3 = (TextView) var9_2.findViewById(R.id.text_item0);
            TextView  var11_4 = (TextView) var9_2.findViewById(R.id.text_item1);
            if (var0.q) {
                var11_4.setTextColor(var0.getResources().getColor(R.color.popup_red));
            } else if (var0.o.equals("all")) {
                var10_3.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            final PopupWindow  var12_5 = var0.a(var9_2);
            var9_2.setOnTouchListener((View.OnTouchListener) new aq(var0, var12_5));
            var10_3.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    var12_5.dismiss();
                    BookHelpListActivity.k(var0).setText("全部");
                    BookHelpListActivity.b(var0, false);
                    BookHelpListActivity.a(var0, "all");
                    BookHelpListActivity.l(var0).setRefreshing();
                }
            });
            var11_4.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    var12_5.dismiss();
                    BookHelpListActivity.k(var0).setText("精品");
                    BookHelpListActivity.b(var0, true);
                    BookHelpListActivity.a(var0, "all");
                    BookHelpListActivity.l(var0).setRefreshing();
                }
            });
            return var12_5;
        }
        View  var2_6 = LayoutInflater.from(var0).inflate(R.layout.book_help_popupwindow_right, null);
        TextView  var3_7 = (TextView) var2_6.findViewById(R.id.text_item0);
        TextView   var4_8 = (TextView) var2_6.findViewById(R.id.text_item1);
        TextView   var5_9 = (TextView) var2_6.findViewById(R.id.text_item2);
        int  var7_11 = -1;
        switch (var0.p.hashCode()) {
            case -234430277: {
                if (var0.p.equals("updated")) {
                    var7_11 = 0;
                    **break;
                }
                **GOTO lbl30
            }
            case 1028554472: {
                if (var0.p.equals("created")) {
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
        if (var0.p.equals("comment-count")) {
            var7_11 = 2;
        }
        lbl35:
        // 4 sources:
        switch (var7_11) {
            case 0: {
                var3_7.setTextColor(var0.getResources().getColor(R.color.popup_red));
                **break;
            }
            case 1: {
                var4_8.setTextColor(var0.getResources().getColor(R.color.popup_red));
            }
            lbl41:
            // 3 sources:
            default:
            {
                **GOTO lbl45
            }
            case 2:
                final PopupWindow var8_12 = var0.a(var2_6);
                var2_6.setOnTouchListener((View.OnTouchListener) new at(var0, var8_12));
                var3_7.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        var8_12.dismiss();
                        BookHelpListActivity.m(var0).setText(R.string.post_sort_default);
                        BookHelpListActivity.b(var0, "updated");
                        BookHelpListActivity.l(var0).setRefreshing();
                    }
                });
                var4_8.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        var8_12.dismiss();
                        BookHelpListActivity.m(var0).setText(R.string.post_sort_create);
                        BookHelpListActivity.b(var0, "created");
                        BookHelpListActivity.l(var0).setRefreshing();
                    }
                });
                var5_9.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        var8_12.dismiss();
                        BookHelpListActivity.m(var0).setText(R.string.post_sort_reply_count);
                        BookHelpListActivity.b(var0, "comment");
                        BookHelpListActivity.l(var0).setRefreshing();
                    }
                });
                return var8_12;
        }
        var5_9.setTextColor(var0.getResources().getColor(R.color.popup_red));
        lbl45:
        // 2 sources:
     }

    static /* synthetic */ au a(BookHelpListActivity bookHelpListActivity, au au2) {
        bookHelpListActivity.b = au2;
        return au2;
    }

    static /* synthetic */ av a(BookHelpListActivity bookHelpListActivity, av av2) {
        bookHelpListActivity.a = av2;
        return av2;
    }

    static /* synthetic */ String a(BookHelpListActivity bookHelpListActivity, String string) {
        bookHelpListActivity.o = string;
        return string;
    }

    static /* synthetic */ void a(BookHelpListActivity bookHelpListActivity) {
        bookHelpListActivity.startActivity(new Intent(bookHelpListActivity, AddBookHelpActivity.class));
    }

    static /* synthetic */ ImageView b(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.m;
    }

    static /* synthetic */ String b(BookHelpListActivity bookHelpListActivity, String string) {
        bookHelpListActivity.p = string;
        return string;
    }

    static /* synthetic */ boolean b(BookHelpListActivity bookHelpListActivity, boolean bl) {
        bookHelpListActivity.q = bl;
        return bl;
    }

    static /* synthetic */ ImageView c(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.n;
    }

    static /* synthetic */ TextView d(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.h;
    }

    static /* synthetic */ au e(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.b;
    }

    static /* synthetic */ String f(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.o;
    }

    static /* synthetic */ String g(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.p;
    }

    static /* synthetic */ av h(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.a;
    }

    static /* synthetic */ ListView i(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.e;
    }

    static /* synthetic */ List j(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.j;
    }

    static /* synthetic */ TextView k(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.k;
    }

    static /* synthetic */ PullToRefreshListView l(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.c;
    }

    static /* synthetic */ TextView m(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.l;
    }

    static /* synthetic */ boolean n(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.q;
    }

    static /* synthetic */ View o(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.g;
    }

    static /* synthetic */ View p(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.f;
    }

    static /* synthetic */ W<BookHelpSummary> q(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.i;
    }

    static /* synthetic */ j r(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.r;
    }

    static /* synthetic */ void s(BookHelpListActivity bookHelpListActivity) {
        bookHelpListActivity.h.setVisibility(View.VISIBLE);
        bookHelpListActivity.h.setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u8352\u6c42\u52a9\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
    }

    private PopupWindow a(View view) {
        PopupWindow popupWindow = new PopupWindow(view, -1, -1);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener((PopupWindow.OnDismissListener) ((Object) new aj(this)));
        return popupWindow;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_help_list);
        this.a("\u4e66\u8352\u533a", R.drawable.ic_action_edit, (aa) ((Object) new af(this)), "\u7f16\u8f91\u4e66\u8352");
        if (bundle != null) {
            this.o = bundle.getString("savedHelpDuration");
            this.p = bundle.getString("savedHelpSort");
        } else {
            this.o = "all";
            this.p = "updated";
        }
        this.g = this.findViewById(R.id.pb_loading);
        this.h = (TextView) this.findViewById(R.id.empty_text);
        this.c = (PullToRefreshListView) this.findViewById(R.id.ptr_list);
        this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        View view = this.findViewById(R.id.community_top_left);
        View view2 = this.findViewById(R.id.community_top_right);
        this.k = (TextView) this.findViewById(R.id.community_top_left_title);
        this.l = (TextView) this.findViewById(R.id.community_top_right_title);
        this.m = (ImageView) this.findViewById(R.id.community_top_left_arrow);
        this.n = (ImageView) this.findViewById(R.id.community_top_right_arrow);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookHelpListActivity.a(BookHelpListActivity.this, true).showAsDropDown(v);
                BookHelpListActivity.b(BookHelpListActivity.this).setImageDrawable(BookHelpListActivity.this.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
            }
        });
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookHelpListActivity.a(BookHelpListActivity.this, false).showAsDropDown(v);
                BookHelpListActivity.b(BookHelpListActivity.this).setImageDrawable(BookHelpListActivity.this.getResources().getDrawable(R.drawable.book_topic_top_arrow_up));
            }
        });
        this.e = (ListView) this.c.h();
        if (a.j()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.f = LayoutInflater.from(this).inflate(R.layout.loading_item, null);
        this.f.setVisibility(View.GONE);
        this.e.addFooterView(this.f);
        this.c.setOnRefreshListener(new an(this));
        this.e.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new ap(this)));
        this.i = new W<BookHelpSummary>(getLayoutInflater(), R.layout.list_item_post){

            @Override
            protected void a(int var1, BookHelpSummary bookHelpSummary) {
                final Author author = bookHelpSummary.getAuthor();
                final SmartImageView smartImageView = this.a(0, SmartImageView.class);
                if (am.m(getLayoutInflater().getContext())) {
                    smartImageView.setImageResource(R.drawable.avatar_default);
                } else {
                    smartImageView.setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
                    smartImageView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            smartImageView.getContext().startActivity(com.clilystudio.netbook.util.e.a(smartImageView.getContext(), author));
                        }
                    });
                }
                this.a(1, author.getNickname());
                this.a(2, "lv." + author.getLv());
                this.a(3, t.e(bookHelpSummary.getCreated()));
                this.a(4, bookHelpSummary.getTitle());
                this.a(5, String.valueOf(bookHelpSummary.getCommentCount()));
                if (com.clilystudio.netbook.hpay100.a.a.r(getLayoutInflater().getContext(), "community_user_gender_icon_toggle")) {
                    String string = author.getGender();
                    if ("male".equals(string)) {
                        ((ImageView) this.a(6, ImageView.class)).setVisibility(View.VISIBLE);
                        ((ImageView) this.a(6, ImageView.class)).setImageLevel(2);
                    } else if ("female".equals(string)) {
                        ((ImageView) this.a(6, ImageView.class)).setVisibility(View.VISIBLE);
                        ((ImageView) this.a(6, ImageView.class)).setImageLevel(3);
                    } else {
                        ((ImageView) this.a(6, ImageView.class)).setVisibility(View.VISIBLE);
                        ((ImageView) this.a(6, ImageView.class)).setImageLevel(4);
                    }
                } else {
                    String string = author.getType();
                    if ("official".equals(string)) {
                        this.a(6, false);
                        ((ImageView) this.a(6, ImageView.class)).setImageLevel(0);
                    } else if ("doyen".equals(string)) {
                        this.a(6, false);
                        ((ImageView) this.a(6, ImageView.class)).setImageLevel(1);
                    } else {
                        this.a(6, true);
                    }
                }
                String string = bookHelpSummary.getState();
                if (((PostFlag) this.a(7, PostFlag.class)).a(string)) {
                    this.a(3, true);
                    this.a(7, false);
                    return;
                }
                this.a(3, false);
                this.a(7, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.title, R.id.comment_count, R.id.avatar_verify, R.id.post_flag};
            }
        };
        this.e.setAdapter(this.i);
        av av2 = this.a = new av(this, 0);
        Object[] arrobject = new String[]{this.o, this.p};
        av2.b(arrobject);
        a.u(this);
        b.a(this, "BookHelpListActivity_Opened");
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.c.setRefreshing();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("savedHelpDuration", this.o);
        bundle.putString("savedHelpSort", this.p);
    }
}
