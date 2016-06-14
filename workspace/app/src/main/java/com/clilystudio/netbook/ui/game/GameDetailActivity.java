package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GamePostRoot;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.post.AddGamePostActivity;
import com.clilystudio.netbook.widget.GameDownloadButton;
import com.clilystudio.netbook.widget.GameGiftGetButton;
import com.clilystudio.netbook.widget.GameGiftView;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import com.umeng.a.b;

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
    private List<GamePostRoot.GamePost> k = new ArrayList<GamePostRoot.GamePost>();
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private BroadcastReceiver o;
    private av p;

    public GameDetailActivity() {
        this.o = new h(this);
        this.p = new l(this);
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, GameDetailActivity.class).a("game_id", string).a();
    }

    public static Intent a(Context context, String string, boolean bl, boolean bl2) {
        return new d().a(context, GameDetailActivity.class).a("game_id", string).a("is_micro_game", Boolean.valueOf(bl)).a("HAS_PLAYED", Boolean.valueOf(bl2)).a();
    }

    static /* synthetic */ Game a(GameDetailActivity gameDetailActivity, Game game) {
        gameDetailActivity.b = game;
        return game;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(GameDetailActivity gameDetailActivity) {
        if (gameDetailActivity.b == null) return;
        if ("1".equals(b.b(gameDetailActivity, "game_center_edit_post_always")) || gameDetailActivity.m || a.j(gameDetailActivity, gameDetailActivity.b.getAndroidPackageName())) {
            gameDetailActivity.startActivity(AddGamePostActivity.a(gameDetailActivity, gameDetailActivity.b.get_id()));
            return;
        }
        com.clilystudio.netbook.util.e.a((Activity) gameDetailActivity, (String) "\u5b89\u88c5\u540e\u624d\u80fd\u4e00\u8d77\u6109\u5feb\u5730\u5410\u69fd\u54df~");
    }

    static /* synthetic */ void a(GameDetailActivity gameDetailActivity, View view, TextView textView, int n2, String string) {
        Account account = am.a((Activity) gameDetailActivity);
        if (account != null) {
            view.setEnabled(false);
            textView.setText("" + (n2 + 1));
            m m2 = new m(gameDetailActivity, 0);
            Object[] arrobject = new String[]{string, account.getToken()};
            m2.b(arrobject);
        }
    }

    static /* synthetic */ void a(GameDetailActivity gameDetailActivity, View view, String string) {
        com.koushikdutta.async.http.a a2 = new com.koushikdutta.async.http.a(gameDetailActivity, view);
        a2.b().inflate(2131558403, a2.a());
        a2.a((android.support.v7.widget.m) ((Object) new k(gameDetailActivity, string)));
        a2.c();
    }

    static /* synthetic */ void a(GameDetailActivity gameDetailActivity, String string, View view) {
        Account account = am.e();
        if (account != null) {
            if (PostAgreeRecord.get(account.getToken(), string) != null) {
                view.setEnabled(false);
                return;
            }
            view.setEnabled(true);
            return;
        }
        view.setEnabled(true);
    }

    static /* synthetic */ ScrollLoadListView b(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.i;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(GameDetailActivity gameDetailActivity, Game game) {
        SmartImageView smartImageView = (SmartImageView) gameDetailActivity.findViewById(2131493466);
        int n2 = am.b((Activity) gameDetailActivity).widthPixels / 2;
        ViewGroup.LayoutParams layoutParams = smartImageView.getLayoutParams();
        layoutParams.height = n2;
        smartImageView.setLayoutParams(layoutParams);
        smartImageView.setImageUrl(game.getBanner());
        ((TextView) gameDetailActivity.findViewById(2131493471)).setText(game.getShortIntro());
        ((SmartImageView) gameDetailActivity.findViewById(2131493468)).setImageUrl(game.getIcon());
        ((TextView) gameDetailActivity.findViewById(2131493469)).setText(game.getName());
        String string = gameDetailActivity.m ? game.getCat() : game.getCat() + " | " + a.c(game.getAndroidSize());
        ((TextView) gameDetailActivity.findViewById(2131493470)).setText(string);
        gameDetailActivity.a.setText(game.getIntro());
        ViewGroup viewGroup = (ViewGroup) gameDetailActivity.findViewById(2131493093);
        String[] arrstring = game.getPictures();
        int n3 = a.a((Context) gameDetailActivity, 8.0f);
        int n4 = 0;
        while (n4 < arrstring.length) {
            String string2 = arrstring[n4];
            SmartImageView smartImageView2 = new SmartImageView(gameDetailActivity);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(a.a((Context) gameDetailActivity, 240.0f), a.a((Context) gameDetailActivity, 160.0f));
            smartImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            smartImageView2.setLayoutParams(layoutParams2);
            smartImageView2.setImageUrl(string2);
            viewGroup.addView(smartImageView2);
            if (n4 != -1 + arrstring.length) {
                ((LinearLayout.LayoutParams) smartImageView2.getLayoutParams()).rightMargin = n3;
            }
            ++n4;
        }
    }

    static /* synthetic */ List c(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.k;
    }

    static /* synthetic */ void d(GameDetailActivity gameDetailActivity) {
        gameDetailActivity.a.setOnClickListener(null);
        gameDetailActivity.a.setMaxLines(Integer.MAX_VALUE);
    }

    static /* synthetic */ Game e(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.b;
    }

    static /* synthetic */ void f(GameDetailActivity gameDetailActivity) {
        gameDetailActivity.j();
    }

    static /* synthetic */ void g(GameDetailActivity gameDetailActivity) {
        gameDetailActivity.h.setVisibility(View.VISIBLE);
        r r2 = gameDetailActivity.g = new r(gameDetailActivity, 0);
        Object[] arrobject = new String[]{gameDetailActivity.b.get_id()};
        r2.b(arrobject);
    }

    static /* synthetic */ boolean h(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.n;
    }

    static /* synthetic */ View i(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.h;
    }

    static /* synthetic */ av j(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.p;
    }

    static /* synthetic */ n k(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.j;
    }

    static /* synthetic */ void l(GameDetailActivity gameDetailActivity) {
        gameDetailActivity.h.setVisibility(View.VISIBLE);
        gameDetailActivity.h.findViewById(2131493085).setVisibility(View.GONE);
        TextView textView = (TextView) gameDetailActivity.h.findViewById(2131493798);
        textView.setText("\u70b9\u51fb\u91cd\u8bd5");
        gameDetailActivity.h.setOnClickListener(new j(gameDetailActivity, textView));
    }

    static /* synthetic */ boolean m(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.l;
    }

    static /* synthetic */ r n(GameDetailActivity gameDetailActivity) {
        return gameDetailActivity.g;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void j() {
        if (this.m) {
            GameDownloadButton gameDownloadButton = this.e;
            String string = this.n ? "\u7ee7\u7eed" : "\u8bd5\u73a9";
            gameDownloadButton.setText(string);
            this.e.setBackgroundResource(2130838100);
            this.e.setOnClickListener(new i(this));
            return;
        } else {
            s.a((Activity) this, (Game) this.b);
            this.e.setGame(this.b);
            this.e.a(this.b.getDownloadStatus());
            if (this.f == null) return;
            {
                this.f.setGame(this.b);
                this.f.a(this.b.getDownloadStatus());
                return;
            }
        }
    }

    public final void a(GameGiftGetButton gameGiftGetButton) {
        this.f = gameGiftGetButton;
    }

    @Override
    protected final void b() {
        this.i();
        q q2 = new q(this, 0);
        Object[] arrobject = new String[]{this.c};
        q2.b(arrobject);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        if (this.getIntent().getBooleanExtra("from_splash", false)) {
            this.startActivity(new Intent(this, HomeActivity.class));
        }
        this.finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903386);
        this.b(2131034389, 2130837866, (aa) ((Object) new com.clilystudio.netbook.ui.game.d(this)));
        this.c = this.getIntent().getStringExtra("game_id");
        this.m = this.getIntent().getBooleanExtra("is_micro_game", false);
        this.n = this.getIntent().getBooleanExtra("HAS_PLAYED", false);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.i = (ScrollLoadListView) this.findViewById(2131493981);
        this.i.setDividerHeight(0);
        View view = layoutInflater.inflate(2130903222, (ViewGroup) this.i, false);
        this.a = (TextView) view.findViewById(2131493475);
        this.e = (GameDownloadButton) view.findViewById(2131493472);
        ImageView imageView = (ImageView) view.findViewById(2131493476);
        this.a.setOnClickListener(new f(this));
        imageView.setOnClickListener((View.OnClickListener) ((Object) new g(this)));
        this.i.addHeaderView(view, null, false);
        this.h = layoutInflater.inflate(2130903325, null);
        this.i.addFooterView(this.h);
        GameGiftView gameGiftView = (GameGiftView) layoutInflater.inflate(2130903223, (ViewGroup) this.i, false);
        this.i.addHeaderView(gameGiftView, null, false);
        gameGiftView.a(this.c, this.m);
        this.j = new n(this, layoutInflater);
        this.i.setAdapter((ListAdapter) ((Object) this.j));
        this.i.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new e(this)));
        this.b();
        this.l = a.r(this, "community_user_gender_icon_toggle");
    }

    @Override
    public void onPause() {
        super.onPause();
        this.unregisterReceiver(this.o);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.registerReceiver(this.o, new IntentFilter("update_game_item_status"));
        if (this.b != null) {
            this.j();
        }
    }
}
