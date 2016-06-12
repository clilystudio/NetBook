package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
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

import java.util.List;

public class GameGiftItemView extends RelativeLayout {

    private GameGift a;
    private com.clilystudio.netbook.view.a b;
    private TextView d;
    private View e;
    private boolean f;
    private Account c = am.e();
    public GameGiftItemView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        setClickable(true);
    }

    static void a(GameGiftItemView GameGiftItemView1) {
        Activity Activity2 = (Activity) GameGiftItemView1.getContext();

        if (GameGiftItemView1.c == null)
            GameGiftItemView1.c = am.a(Activity2);
        else {
            J J3 = new J(GameGiftItemView1, Activity2);
            String[] String_1darray4 = new String[2];

            String_1darray4[0] = GameGiftItemView1.a._id;
            String_1darray4[1] = GameGiftItemView1.c.getToken();
            J3.b(String_1darray4);
        }
    }

    static void a(GameGiftItemView GameGiftItemView1, String String2) {
        GameGiftItemView1.a(String2);
    }

    static void b(GameGiftItemView GameGiftItemView1, String String2) {
        GameGiftItemView1.b(String2);
    }

    static boolean b(GameGiftItemView GameGiftItemView1) {
        return GameGiftItemView1.f;
    }

    static GameGift c(GameGiftItemView GameGiftItemView1) {
        return GameGiftItemView1.a;
    }

    static Account d(GameGiftItemView GameGiftItemView1) {
        return GameGiftItemView1.c;
    }

    private void a(String String1) {
        com.clilystudio.netbook.view.a a2 = new com.clilystudio.netbook.view.a(getContext());
        View View3 = View.inflate(getContext(), 2130903192, null);
        TextView TextView4;
        Button Button5;

        ((TextView) View3.findViewById(2131493395)).setText((CharSequence) a.title);
        TextView4 = (TextView) View3.findViewById(2131493397);
        ((TextView) View3.findViewById(2131493399)).setText((CharSequence) a.description);
        ((TextView) View3.findViewById(2131493401)).setText((CharSequence) a.usage);
        ((TextView) View3.findViewById(2131493400)).setText((CharSequence) new StringBuilder().append(t.b(a.rangeFrom)).append(" - ").append(t.b(a.rangeTo)).toString());
        a2.a(View3).show();
        Button5 = (Button) View3.findViewById(2131493402);
        if (String1 == null) {
            Button5.setText((CharSequence) "\u9886\u53D6");
            TextView4.setText((CharSequence) new StringBuilder("\u5DF2\u6709 ").append(a.total - a.left).append(" \u4EBA\u9886\u53D6\uFF0C\u5269\u4F59 ").append(a.left).append(" \u4E2A").toString());
            Button5.setBackgroundResource(2130837746);
            Button5.setOnClickListener((View$OnClickListener) new F(this, a2));
        } else {
            TextView4.setText((CharSequence) new StringBuilder("\u5151\u6362\u7801\uFF1A").append(String1).toString());
            Button5.setText((CharSequence) "\u590D\u5236\u5151\u6362\u7801\u5E76\u6253\u5F00\u6E38\u620F");
            Button5.setBackgroundResource(2130837749);
            Button5.setOnClickListener((View$OnClickListener) new G(this, a2, String1));
        }
    }

    private void b(String String1) {
        d.setText((CharSequence) "\u67E5\u770B");
        d.setBackgroundResource(2130837819);
        d.setOnClickListener((View$OnClickListener) new H(this, String1));
        e.setOnClickListener((View$OnClickListener) new I(this, String1));
    }

    public final void a() {
        if (f || com.clilystudio.netbook.hpay100.a.a.j(getContext(), a.game.getAndroidPackageName())) {
            try {
                if (b != null)
                    b.dismiss();
            } catch (Exception Exception1) {
                Exception1.printStackTrace();
            }
            a(null);
        } else {
            Game Game2 = a.game;
            View View3 = View.inflate(getContext(), 2130903191, null);
            GameGiftGetButton GameGiftGetButton4;

            ((SmartImageView) View3.findViewById(2131493394)).setImageUrl(Game2.getIcon());
            ((TextView) View3.findViewById(2131493397)).setText((CharSequence) new StringBuilder("\u5269\u4F59\u793C\u5305").append(a.left).append("\u4E2A").toString());
            ((TextView) View3.findViewById(2131493395)).setText((CharSequence) a.title);
            ((TextView) View3.findViewById(2131493396)).setText((CharSequence) new StringBuilder().append(Game2.getCat()).append(" | ").append(com.clilystudio.netbook.hpay100.a.a.c(Game2.getAndroidSize())).toString());
            s.a((Activity) getContext(), Game2);
            GameGiftGetButton4 = (GameGiftGetButton) View3.findViewById(2131493398);
            GameGiftGetButton4.setGame(Game2);
            GameGiftGetButton4.a(Game2.getDownloadStatus());
            GameGiftGetButton4.setGiftItemView(this);
            b = new com.clilystudio.netbook.view.a(getContext());
            b.a(View3).show();
        }
    }

    public final void a(GameGift GameGift1, boolean boolean2) {
        String String3;

        f = boolean2;
        ((TextView) findViewById(2131493675)).setText((CharSequence) GameGift1.title);
        ((TextView) findViewById(2131493677)).setText((CharSequence) GameGift1.description);
        d = (TextView) findViewById(2131493676);
        e = findViewById(2131493673);
        a = GameGift1;
        label_64:
        {
            if (c != null) {
                List List4 = GameGiftRecord.getRecords(c.getUser().getId(), GameGift1._id);

                if (List4 != null && !List4.isEmpty()) {
                    GameGiftRecord GameGiftRecord5 = (GameGiftRecord) List4.get(0);

                    if (GameGiftRecord5.giftId != null && GameGiftRecord5.giftId.equals(GameGift1._id)) {
                        String3 = GameGiftRecord5.giftCode;
                        break label_64;
                    }
                }
            }
            String3 = null;
        }
        if (String3 != null) {
            b(String3);
            e.setOnClickListener((View$OnClickListener) new D(this, String3));
        } else
            e.setOnClickListener((View$OnClickListener) new E(this));
    }
}
