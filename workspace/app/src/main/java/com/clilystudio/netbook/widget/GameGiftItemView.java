package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.game.s;
import com.clilystudio.netbook.util.t;

import java.util.Date;

public class GameGiftItemView extends RelativeLayout {
    private GameGift a;
    private com.clilystudio.netbook.view.a b;
    private Account c = am.e();
    private TextView d;
    private View e;
    private boolean f;

    public GameGiftItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setClickable(true);
    }

    static /* synthetic */ void a(GameGiftItemView gameGiftItemView) {
        Activity activity = (Activity) gameGiftItemView.getContext();
        if (gameGiftItemView.c == null) {
            gameGiftItemView.c = am.a((Activity) activity);
            return;
        }
        J j = new J(gameGiftItemView, activity);
        String[] arrstring = new String[]{gameGiftItemView.a._id, gameGiftItemView.c.getToken()};
        j.b(arrstring);
    }

    static /* synthetic */ void a(GameGiftItemView gameGiftItemView, String string) {
        gameGiftItemView.a(string);
    }

    static /* synthetic */ void b(GameGiftItemView gameGiftItemView, String string) {
        gameGiftItemView.b(string);
    }

    static /* synthetic */ boolean b(GameGiftItemView gameGiftItemView) {
        return gameGiftItemView.f;
    }

    static /* synthetic */ GameGift c(GameGiftItemView gameGiftItemView) {
        return gameGiftItemView.a;
    }

    static /* synthetic */ Account d(GameGiftItemView gameGiftItemView) {
        return gameGiftItemView.c;
    }

    private void a(String string) {
        com.clilystudio.netbook.view.a a2 = new com.clilystudio.netbook.view.a(this.getContext());
        View view = View.inflate(this.getContext(), R.layout.dialog_game_gift_info, null);
        ((TextView) view.findViewById(R.id.game_gift_name)).setText(this.a.title);
        TextView textView = (TextView) view.findViewById(R.id.game_gift_left);
        ((TextView) view.findViewById(R.id.game_gift_desc)).setText(this.a.description);
        ((TextView) view.findViewById(R.id.game_gift_use)).setText(this.a.usage);
        ((TextView) view.findViewById(R.id.game_gift_date)).setText(t.b((Date) this.a.rangeFrom) + " - " + t.b((Date) this.a.rangeTo));
        a2.a(view).show();
        Button button = (Button) view.findViewById(R.id.game_gift_btn);
        if (string == null) {
            button.setText("\u9886\u53d6");
            textView.setText("\u5df2\u6709 " + (this.a.total - this.a.left) + " \u4eba\u9886\u53d6\uff0c\u5269\u4f59 " + this.a.left + " \u4e2a");
            button.setBackgroundResource(R.drawable.common_btn_red_bg);
            button.setOnClickListener((View.OnClickListener) ((Object) new F(this, a2)));
            return;
        }
        textView.setText("\u5151\u6362\u7801\uff1a" + string);
        button.setText("\u590d\u5236\u5151\u6362\u7801\u5e76\u6253\u5f00\u6e38\u620f");
        button.setBackgroundResource(R.drawable.common_green_bg);
        button.setOnClickListener(new G(this, a2, string));
    }

    private void b(String string) {
        this.d.setText("\u67e5\u770b");
        this.d.setBackgroundResource(R.drawable.green_round_button);
        this.d.setOnClickListener(new H(this, string));
        this.e.setOnClickListener((View.OnClickListener) ((Object) new I(this, string)));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final void a() {
        if (!this.f && !a.j(this.getContext(), this.a.game.getAndroidPackageName())) {
            Game game = this.a.game;
            View view = View.inflate(this.getContext(), R.layout.dialog_game_gift_get_dl, null);
            ((SmartImageView) view.findViewById(R.id.game_gift_icon)).setImageUrl(game.getIcon());
            ((TextView) view.findViewById(R.id.game_gift_left)).setText("\u5269\u4f59\u793c\u5305" + this.a.left + "\u4e2a");
            ((TextView) view.findViewById(R.id.game_gift_name)).setText(this.a.title);
            ((TextView) view.findViewById(R.id.game_gift_type_size)).setText(game.getCat() + " | " + a.c(game.getAndroidSize()));
            s.a((Activity) ((Activity) this.getContext()), (Game) game);
            GameGiftGetButton gameGiftGetButton = (GameGiftGetButton) view.findViewById(R.id.game_gift_download);
            gameGiftGetButton.setGame(game);
            gameGiftGetButton.a(game.getDownloadStatus());
            gameGiftGetButton.setGiftItemView(this);
            this.b = new com.clilystudio.netbook.view.a(this.getContext());
            this.b.a(view).show();
            return;
        }
        try {
            if (this.b != null) {
                this.b.dismiss();
            }
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
        }
        this.a(null);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final void a(GameGift var1_1, boolean var2_2) {
        this.f = var2_2;
        ((TextView) this.findViewById(R.id.game_gift_item_title)).setText(var1_1.title);
        ((TextView) this.findViewById(R.id.game_gift_item_desc)).setText(var1_1.description);
        this.d = (TextView) this.findViewById(R.id.game_gift_item_btn);
        this.e = this.findViewById(R.id.game_gift_item);
        this.a = var1_1;
        if (this.c == null || (var4_3 = GameGiftRecord.getRecords(this.c.getUser().getId(), var1_1._id)) == null || var4_3.isEmpty())**GOTO lbl -1000
        var5_4 = var4_3.get(0);
        if (var5_4.giftId != null && var5_4.giftId.equals(var1_1._id)) {
            var3_5 = var5_4.giftCode;
        } else lbl - 1000: // 2 sources:
        {
            var3_5 = null;
        }
        if (var3_5 != null) {
            this.b(var3_5);
            this.e.setOnClickListener(new D(this, var3_5));
            return;
        }
        this.e.setOnClickListener(new E(this));
    }
}
