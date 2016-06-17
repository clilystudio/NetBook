package com.clilystudio.netbook.ui.game;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.GameGiftGetButton;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.Date;

public class GameGiftListActivity extends BaseActivity {
    private y a;
    private Account b;
    private GameGift c;
    private TextView e;
    private View f;
    private com.clilystudio.netbook.view.a g;
    private boolean h;

    public static Intent a(Context context, GameGiftRoot gameGiftRoot, boolean bl) {
        return new d().a(context, GameGiftListActivity.class).a("game_gift_list", gameGiftRoot).a("is_micro_game", Boolean.valueOf(bl)).a();
    }

    static /* synthetic */ View a(GameGiftListActivity gameGiftListActivity, View view) {
        gameGiftListActivity.f = view;
        return view;
    }

    static /* synthetic */ TextView a(GameGiftListActivity gameGiftListActivity, TextView textView) {
        gameGiftListActivity.e = textView;
        return textView;
    }

    static /* synthetic */ GameGift a(GameGiftListActivity gameGiftListActivity, GameGift gameGift) {
        gameGiftListActivity.c = gameGift;
        return gameGift;
    }

    static /* synthetic */ void a(GameGiftListActivity gameGiftListActivity) {
        if (gameGiftListActivity.b == null) {
            gameGiftListActivity.b = am.a((Activity) gameGiftListActivity);
            return;
        }
        D d2 = new D(gameGiftListActivity, gameGiftListActivity);
        String[] arrstring = new String[]{gameGiftListActivity.c._id, gameGiftListActivity.b.getToken()};
        d2.b(arrstring);
    }

    static /* synthetic */ void a(GameGiftListActivity gameGiftListActivity, String string) {
        gameGiftListActivity.a(string);
    }

    static /* synthetic */ boolean b(GameGiftListActivity gameGiftListActivity) {
        return gameGiftListActivity.h;
    }

    static /* synthetic */ GameGift c(GameGiftListActivity gameGiftListActivity) {
        return gameGiftListActivity.c;
    }

    static /* synthetic */ Account d(GameGiftListActivity gameGiftListActivity) {
        return gameGiftListActivity.b;
    }

    static /* synthetic */ TextView e(GameGiftListActivity gameGiftListActivity) {
        return gameGiftListActivity.e;
    }

    static /* synthetic */ View f(GameGiftListActivity gameGiftListActivity) {
        return gameGiftListActivity.f;
    }

    private void a(final String string) {
        final com.clilystudio.netbook.view.a a2 = new com.clilystudio.netbook.view.a(this);
        View view = View.inflate(this, R.layout.dialog_game_gift_info, null);
        ((TextView) view.findViewById(R.id.game_gift_name)).setText(this.c.title);
        TextView textView = (TextView) view.findViewById(R.id.game_gift_left);
        ((TextView) view.findViewById(R.id.game_gift_desc)).setText(this.c.description);
        ((TextView) view.findViewById(R.id.game_gift_use)).setText(this.c.usage);
        ((TextView) view.findViewById(R.id.game_gift_date)).setText(t.b((Date) this.c.rangeFrom) + " - " + t.b((Date) this.c.rangeTo));
        a2.a(view).show();
        Button button = (Button) view.findViewById(R.id.game_gift_btn);
        if (string == null) {
            button.setText("\u9886\u53d6");
            textView.setText("\u5df2\u6709 " + (this.c.total - this.c.left) + " \u4eba\u9886\u53d6\uff0c\u5269\u4f59 " + this.c.left + " \u4e2a");
            button.setBackgroundResource(R.drawable.common_btn_red_bg);
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    a2.dismiss();
                    GameGiftListActivity.a(GameGiftListActivity.this);
                }
            });
            return;
        }
        textView.setText("\u5151\u6362\u7801\uff1a" + string);
        button.setText("\u590d\u5236\u5151\u6362\u7801\u5e76\u6253\u5f00\u6e38\u620f");
        button.setBackgroundResource(R.drawable.common_green_bg);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                a2.dismiss();
                am.a(GameGiftListActivity.this, string);
                com.clilystudio.netbook.util.e.a(GameGiftListActivity.this, "\u5df2\u590d\u5236");
                if (GameGiftListActivity.b(GameGiftListActivity.this)) {
                    am.a(GameGiftListActivity.this, GameGiftListActivity.c(GameGiftListActivity.this).game);
                    MiStatInterface.recordCountEvent("micro_game_play_click", GameGiftListActivity.c(GameGiftListActivity.this).game.getName());
                    return;
                }
                am.d(GameGiftListActivity.this, GameGiftListActivity.c(GameGiftListActivity.this).game.getAndroidPackageName());
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final void b() {
        if (!this.h && !a.j(this, this.c.game.getAndroidPackageName())) {
            Game game = this.c.game;
            View view = View.inflate(this, R.layout.dialog_game_gift_get_dl, null);
            ((SmartImageView) view.findViewById(R.id.game_gift_icon)).setImageUrl(game.getIcon());
            ((TextView) view.findViewById(R.id.game_gift_left)).setText("\u5269\u4f59\u793c\u5305" + this.c.left + "\u4e2a");
            ((TextView) view.findViewById(R.id.game_gift_name)).setText(this.c.title);
            ((TextView) view.findViewById(R.id.game_gift_type_size)).setText(game.getCat() + " | " + a.c(game.getAndroidSize()));
            GameGiftGetButton gameGiftGetButton = (GameGiftGetButton) view.findViewById(R.id.game_gift_download);
            s.a((Activity) this, (Game) game);
            gameGiftGetButton.setGame(game);
            gameGiftGetButton.a(game.getDownloadStatus());
            this.g = new com.clilystudio.netbook.view.a(this);
            this.g.a(view).show();
            return;
        }
        try {
            if (this.g != null) {
                this.g.dismiss();
            }
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
        }
        this.a(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 9)
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.listview);
        String string = this.getIntent().getStringExtra("title");
        this.h = this.getIntent().getBooleanExtra("is_micro_game", false);
        if (string != null) {
            this.b(string);
        } else {
            this.b("\u5f80\u671f\u6e38\u620f");
        }
        ListView listView = (ListView) this.findViewById(R.id.content_list);
        listView.setDividerHeight(0);
        this.a = new y(this, this.getLayoutInflater());
        listView.setAdapter((ListAdapter) ((Object) this.a));
        this.b = am.e();
        GameGiftRoot gameGiftRoot = (GameGiftRoot) this.getIntent().getSerializableExtra("game_gift_list");
        if (gameGiftRoot != null) {
            Object[] arrobject = gameGiftRoot.gifts;
            this.a.a(arrobject);
        }
    }
}
