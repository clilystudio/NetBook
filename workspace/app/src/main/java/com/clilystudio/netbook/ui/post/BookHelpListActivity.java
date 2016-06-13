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

import com.clilystudio.netbook.adapter.d;
import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class BookHelpListActivity
        extends BaseActivity {
    private av a;
    private au b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private d i;
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
    static /* synthetic */ PopupWindow a(BookHelpListActivity var0, boolean var1_1) {
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
            var9_2.setOnTouchListener((View.OnTouchListener) new aq(var0, var12_5));
            var10_3.setOnClickListener((View.OnClickListener) new ar(var0, var12_5));
            var11_4.setOnClickListener((View.OnClickListener) new as(var0, var12_5));
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
        var2_6.setOnTouchListener((View.OnTouchListener) new at(var0, var8_12));
        var3_7.setOnClickListener((View.OnClickListener) new ag(var0, var8_12));
        var4_8.setOnClickListener((View.OnClickListener) new ah(var0, var8_12));
        var5_9.setOnClickListener((View.OnClickListener) new ai(var0, var8_12));
        return var8_12;
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

    static /* synthetic */ d q(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.i;
    }

    static /* synthetic */ j r(BookHelpListActivity bookHelpListActivity) {
        return bookHelpListActivity.r;
    }

    static /* synthetic */ void s(BookHelpListActivity bookHelpListActivity) {
        bookHelpListActivity.h.setVisibility(0);
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
        this.setContentView(2130903086);
        this.a("\u4e66\u8352\u533a", 2130837866, (aa) ((Object) new af(this)), "\u7f16\u8f91\u4e66\u8352");
        if (bundle != null) {
            this.o = bundle.getString("savedHelpDuration");
            this.p = bundle.getString("savedHelpSort");
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
        view.setOnClickListener((View.OnClickListener) ((Object) new al(this)));
        view2.setOnClickListener((View.OnClickListener) ((Object) new am(this)));
        this.e = (ListView) this.c.h();
        if (a.j()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.f = LayoutInflater.from(this).inflate(2130903325, null);
        this.f.setVisibility(8);
        this.e.addFooterView(this.f);
        this.c.setOnRefreshListener(new an(this));
        this.e.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new ap(this)));
        this.i = new d(this.getLayoutInflater());
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
