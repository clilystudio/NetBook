package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.post.AddGamePostActivity;
import com.clilystudio.netbook.widget.GameDownloadButton;
import com.clilystudio.netbook.widget.GameGiftGetButton;
import com.clilystudio.netbook.widget.GameGiftView;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.List;

public class GameDetailActivity extends BaseLoadingActivity {

    private TextView a;
    private Game b;
    private String c;
    private GameDownloadButton e;
    private GameGiftGetButton f;
    private r g;
    private View h;
    private ScrollLoadListView i;
    private n j;
    private List k = new ArrayList();
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private BroadcastReceiver o = new h(this);
    private av p = new l(this);
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, boolean boolean3, boolean boolean4) {
    }

    static Game a(GameDetailActivity GameDetailActivity1, Game Game2) {
        GameDetailActivity1.b = Game2;
        return Game2;
    }

    static void a(GameDetailActivity GameDetailActivity1) {
        if (GameDetailActivity1.b != null) {
            if ("1".equals(com.umeng.a.b.b((Context) GameDetailActivity1, "game_center_edit_post_always")) || GameDetailActivity1.m || com.clilystudio.netbook.hpay100.a.a.j((Context) GameDetailActivity1, GameDetailActivity1.b.getAndroidPackageName()))
                GameDetailActivity1.startActivity(AddGamePostActivity.a((Context) GameDetailActivity1, GameDetailActivity1.b.get_id()));
            else {
                com.clilystudio.netbook.util.e.a((Activity) GameDetailActivity1, "\u5B89\u88C5\u540E\u624D\u80FD\u4E00\u8D77\u6109\u5FEB\u5730\u5410\u69FD\u54DF~");
                return;
            }
        }
    }

    static void a(GameDetailActivity GameDetailActivity1, View View2, TextView TextView3, int int4, String String5) {
        Account Account6 = am.a((Activity) GameDetailActivity1);

        if (Account6 != null) {
            m m7;
            String[] String_1darray8;

            View2.setEnabled(false);
            TextView3.setText((CharSequence) new StringBuilder().append(int4 + 1).toString());
            m7 = new m(GameDetailActivity1, (byte) 0);
            String_1darray8 = new String[2];
            String_1darray8[0] = String5;
            String_1darray8[1] = Account6.getToken();
            m7.b(String_1darray8);
        }
    }

    static void a(GameDetailActivity GameDetailActivity1, View View2, String String3) {
        com.koushikdutta.async.http.a a4 = new com.koushikdutta.async.http.a((Context) GameDetailActivity1, View2);

        a4.b().inflate(2131558403, a4.a());
        a4.a((android.support.v7.widget.m) new k(GameDetailActivity1, String3));
        a4.c();
    }

    static void a(GameDetailActivity GameDetailActivity1, String String2, View View3) {
        Account Account4 = am.e();

        if (Account4 != null) {
            if (PostAgreeRecord.get(Account4.getToken(), String2) != null)
                View3.setEnabled(false);
            else
                View3.setEnabled(true);
        } else
            View3.setEnabled(true);
    }

    static ScrollLoadListView b(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.i;
    }

    static void b(GameDetailActivity GameDetailActivity1, Game Game2) {
        SmartImageView SmartImageView3 = (SmartImageView) GameDetailActivity1.findViewById(2131493466);
        int int4 = am.b((Activity) GameDetailActivity1).widthPixels / 2;
        ViewGroup$LayoutParams LayoutParams5 = SmartImageView3.getLayoutParams();
        Object Object6;
        ViewGroup ViewGroup7;
        String[] String_1darray8;
        int int9;
        int int10;

        LayoutParams5.height = int4;
        SmartImageView3.setLayoutParams(LayoutParams5);
        SmartImageView3.setImageUrl(Game2.getBanner());
        ((TextView) GameDetailActivity1.findViewById(2131493471)).setText((CharSequence) Game2.getShortIntro());
        ((SmartImageView) GameDetailActivity1.findViewById(2131493468)).setImageUrl(Game2.getIcon());
        ((TextView) GameDetailActivity1.findViewById(2131493469)).setText((CharSequence) Game2.getName());
        if (GameDetailActivity1.m)
            Object6 = Game2.getCat();
        else
            Object6 = new StringBuilder().append(Game2.getCat()).append(" | ").append(com.clilystudio.netbook.hpay100.a.a.c(Game2.getAndroidSize())).toString();
        ((TextView) GameDetailActivity1.findViewById(2131493470)).setText((CharSequence) Object6);
        GameDetailActivity1.a.setText((CharSequence) Game2.getIntro());
        ViewGroup7 = (ViewGroup) GameDetailActivity1.findViewById(2131493093);
        String_1darray8 = Game2.getPictures();
        int9 = com.clilystudio.netbook.hpay100.a.a.a((Context) GameDetailActivity1, 8.0F);
        for (int10 = 0; int10 < String_1darray8.length; ++int10) {
            String String11 = String_1darray8[int10];
            Object Object12 = new SmartImageView((Context) GameDetailActivity1);
            Object Object13 = new LinearLayout$LayoutParams(com.clilystudio.netbook.hpay100.a.a.a((Context) GameDetailActivity1, 240.0F), com.clilystudio.netbook.hpay100.a.a.a((Context) GameDetailActivity1, 160.0F));

            ((SmartImageView) Object12).setScaleType(ImageView$ScaleType.FIT_XY);
            ((SmartImageView) Object12).setLayoutParams((ViewGroup$LayoutParams) Object13);
            ((SmartImageView) Object12).setImageUrl(String11);
            ViewGroup7.addView((View) Object12);
            if (int10 != -1 + String_1darray8.length)
                ((LinearLayout$LayoutParams) ((SmartImageView) Object12).getLayoutParams()).rightMargin = int9;
        }
    }

    static List c(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.k;
    }

    static void d(GameDetailActivity GameDetailActivity1) {
        GameDetailActivity1.a.setOnClickListener(null);
        GameDetailActivity1.a.setMaxLines(2147483647);
    }

    static Game e(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.b;
    }

    static void f(GameDetailActivity GameDetailActivity1) {
        GameDetailActivity1.j();
    }

    static void g(GameDetailActivity GameDetailActivity1) {
        r r2;
        String[] String_1darray3;

        GameDetailActivity1.h.setVisibility(0);
        GameDetailActivity1.g = new r(GameDetailActivity1, (byte) 0);
        r2 = GameDetailActivity1.g;
        String_1darray3 = new String[1];
        String_1darray3[0] = GameDetailActivity1.b.get_id();
        r2.b(String_1darray3);
    }

    static boolean h(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.n;
    }

    static View i(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.h;
    }

    static av j(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.p;
    }

    static n k(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.j;
    }

    static void l(GameDetailActivity GameDetailActivity1) {
        TextView TextView2;

        GameDetailActivity1.h.setVisibility(0);
        GameDetailActivity1.h.findViewById(2131493085).setVisibility(8);
        TextView2 = (TextView) GameDetailActivity1.h.findViewById(2131493798);
        TextView2.setText((CharSequence) "\u70B9\u51FB\u91CD\u8BD5");
        GameDetailActivity1.h.setOnClickListener((View$OnClickListener) new j(GameDetailActivity1, TextView2));
    }

    static boolean m(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.l;
    }

    static r n(GameDetailActivity GameDetailActivity1) {
        return GameDetailActivity1.g;
    }

    private void j() {
        if (m) {
            GameDownloadButton GameDownloadButton1 = e;
            Object Object2;

            if (n)
                Object2 = "\u7EE7\u7EED";
            else
                Object2 = "\u8BD5\u73A9";
            GameDownloadButton1.setText((CharSequence) Object2);
            e.setBackgroundResource(2130838100);
            e.setOnClickListener((View$OnClickListener) new i(this));
        } else {
            s.a((Activity) this, b);
            e.setGame(b);
            e.a(b.getDownloadStatus());
            if (f != null) {
                f.setGame(b);
                f.a(b.getDownloadStatus());
                return;
            }
        }
    }

    public final void a(GameGiftGetButton GameGiftGetButton1) {
        f = GameGiftGetButton1;
    }

    protected final void b() {
        q q1;
        String[] String_1darray2;

        i();
        q1 = new q(this, (byte) 0);
        String_1darray2 = new String[1];
        String_1darray2[0] = c;
        q1.b(String_1darray2);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onBackPressed() {
    }

    protected void onCreate(Bundle Bundle1) {
        LayoutInflater LayoutInflater2;
        View View3;
        ImageView ImageView4;
        Object Object5;

        super.onCreate(Bundle1);
        a(2130903386);
        b(2131034389, 2130837866, (aa) new d(this));
        c = getIntent().getStringExtra("game_id");
        m = getIntent().getBooleanExtra("is_micro_game", false);
        n = getIntent().getBooleanExtra("HAS_PLAYED", false);
        LayoutInflater2 = LayoutInflater.from((Context) this);
        i = (ScrollLoadListView) findViewById(2131493981);
        i.setDividerHeight(0);
        View3 = LayoutInflater2.inflate(2130903222, (ViewGroup) i, false);
        a = (TextView) View3.findViewById(2131493475);
        e = (GameDownloadButton) View3.findViewById(2131493472);
        ImageView4 = (ImageView) View3.findViewById(2131493476);
        a.setOnClickListener((View$OnClickListener) new f(this));
        ImageView4.setOnClickListener((View$OnClickListener) new g(this));
        i.addHeaderView(View3, null, false);
        h = LayoutInflater2.inflate(2130903325, null);
        i.addFooterView(h);
        Object5 = (GameGiftView) LayoutInflater2.inflate(2130903223, (ViewGroup) i, false);
        i.addHeaderView((View) Object5, null, false);
        ((GameGiftView) Object5).a(c, m);
        j = new n(this, LayoutInflater2);
        i.setAdapter((ListAdapter) j);
        i.setOnItemClickListener((AdapterView$OnItemClickListener) new e(this));
        b();
        l = com.clilystudio.netbook.hpay100.a.a.r((Context) this, "community_user_gender_icon_toggle");
    }

    public void onPause() {
        super.onPause();
        unregisterReceiver(o);
    }

    public void onResume() {
        super.onResume();
        registerReceiver(o, new IntentFilter("update_game_item_status"));
        if (b != null)
            j();
    }
}
