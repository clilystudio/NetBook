package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.view.a;

import java.util.Date;

public class GiftGameGiftButton extends Button {
    private GiftGameGift a;
    private GiftGame b;
    private Account c;

    public GiftGameGiftButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(GiftGameGiftButton giftGameGiftButton) {
        Activity activity = (Activity) giftGameGiftButton.getContext();
        if (giftGameGiftButton.c == null) {
            giftGameGiftButton.c = am.a((Activity) activity);
            return;
        }
        Y y2 = new Y(giftGameGiftButton, activity);
        Object[] arrobject = new String[]{giftGameGiftButton.a._id, giftGameGiftButton.c.getToken()};
        y2.b(arrobject);
    }

    static /* synthetic */ void a(GiftGameGiftButton giftGameGiftButton, String string) {
        giftGameGiftButton.b(string);
    }

    static /* synthetic */ GiftGame b(GiftGameGiftButton giftGameGiftButton) {
        return giftGameGiftButton.b;
    }

    static /* synthetic */ void b(GiftGameGiftButton giftGameGiftButton, String string) {
        giftGameGiftButton.a(string);
    }

    static /* synthetic */ Account c(GiftGameGiftButton giftGameGiftButton) {
        return giftGameGiftButton.c;
    }

    static /* synthetic */ GiftGameGift d(GiftGameGiftButton giftGameGiftButton) {
        return giftGameGiftButton.a;
    }

    private void a(String string) {
        this.setVisibility(View.VISIBLE);
        this.setText("\u67e5\u770b");
        this.setBackgroundResource(R.drawable.green_round_button);
        this.setOnClickListener(new U(this, string));
    }

    private void b(String string) {
        final a a2 = new a(this.getContext());
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
            textView.setText("\u5df2\u6709 " + (this.a.totalCount - this.a.leftCount) + " \u4eba\u9886\u53d6\uff0c\u5269\u4f59 " + this.a.leftCount + " \u4e2a");
            button.setBackgroundResource(R.color.btn_bg_red);
            button.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    a2.dismiss();
                    GiftGameGiftButton.a(GiftGameGiftButton.this);
                }
            });
            return;
        }
        textView.setText("\u5151\u6362\u7801\uff1a" + string);
        button.setText("\u590d\u5236\u5151\u6362\u7801\u5e76\u6253\u5f00\u6e38\u620f");
        button.setBackgroundResource(R.color.btn_bg_green);
        button.setOnClickListener(new W(this, a2, string));
    }

    protected final void a() {
        this.b(null);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final void a(int var1_1) {
        if (this.c == null || (var4_2 = GameGiftRecord.getRecords(this.c.getUser().getId(), this.a._id)) == null || var4_2.isEmpty())**GOTO lbl -1000
        var5_3 = var4_2.get(0);
        if (var5_3.giftId != null && var5_3.giftId.equals(this.a._id)) {
            var2_4 = var5_3.giftCode;
        } else lbl - 1000: // 2 sources:
        {
            var2_4 = null;
        }
        if (var2_4 != null) {
            this.a(var2_4);
        }
        if (var2_4 != null) {
            return;
        }
        var3_5 = false;
        if (var3_5) {
            return;
        }
        switch (var1_1) {
            default: {
                this.setVisibility(View.GONE);
                return;
            }
            case 1:
            case 2:
            case 8: {
                this.setVisibility(View.GONE);
                return;
            }
            case 32:
        }
        this.setVisibility(View.VISIBLE);
        this.setText("\u9886\u53d6");
        this.setBackgroundResource(R.drawable.red_round_button);
        this.setOnClickListener(new X(this, 0));
    }

    public void setAccount(Account account) {
        this.c = account;
    }

    public void setGame(GiftGame giftGame) {
        this.b = giftGame;
    }

    public void setGift(GiftGameGift giftGameGift) {
        this.a = giftGameGift;
    }
}
