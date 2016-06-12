package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;
import com.clilystudio.netbook.util.t;

import java.util.List;

public class GiftGameGiftButton extends Button {

    private GiftGameGift a;
    private GiftGame b;
    private Account c;
    public GiftGameGiftButton(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(GiftGameGiftButton GiftGameGiftButton1) {
        Activity Activity2 = (Activity) GiftGameGiftButton1.getContext();

        if (GiftGameGiftButton1.c == null)
            GiftGameGiftButton1.c = am.a(Activity2);
        else {
            Y Y3 = new Y(GiftGameGiftButton1, Activity2);
            String[] String_1darray4 = new String[2];

            String_1darray4[0] = GiftGameGiftButton1.a._id;
            String_1darray4[1] = GiftGameGiftButton1.c.getToken();
            Y3.b(String_1darray4);
        }
    }

    static void a(GiftGameGiftButton GiftGameGiftButton1, String String2) {
        GiftGameGiftButton1.b(String2);
    }

    static GiftGame b(GiftGameGiftButton GiftGameGiftButton1) {
        return GiftGameGiftButton1.b;
    }

    static void b(GiftGameGiftButton GiftGameGiftButton1, String String2) {
        GiftGameGiftButton1.a(String2);
    }

    static Account c(GiftGameGiftButton GiftGameGiftButton1) {
        return GiftGameGiftButton1.c;
    }

    static GiftGameGift d(GiftGameGiftButton GiftGameGiftButton1) {
        return GiftGameGiftButton1.a;
    }

    private void a(String String1) {
        setVisibility(0);
        setText((CharSequence) "\u67E5\u770B");
        setBackgroundResource(2130837819);
        setOnClickListener((View$OnClickListener) new U(this, String1));
    }

    private void b(String String1) {
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
            TextView4.setText((CharSequence) new StringBuilder("\u5DF2\u6709 ").append(a.totalCount - a.leftCount).append(" \u4EBA\u9886\u53D6\uFF0C\u5269\u4F59 ").append(a.leftCount).append(" \u4E2A").toString());
            Button5.setBackgroundResource(2131427379);
            Button5.setOnClickListener((View$OnClickListener) new V(this, a2));
        } else {
            TextView4.setText((CharSequence) new StringBuilder("\u5151\u6362\u7801\uFF1A").append(String1).toString());
            Button5.setText((CharSequence) "\u590D\u5236\u5151\u6362\u7801\u5E76\u6253\u5F00\u6E38\u620F");
            Button5.setBackgroundResource(2131427378);
            Button5.setOnClickListener((View$OnClickListener) new W(this, a2, String1));
        }
    }

    protected final void a() {
        b(null);
    }

    public final void a(int int1) {
        String String2;
        int int3;

        label_35:
        {
            if (c != null) {
                List List4 = GameGiftRecord.getRecords(c.getUser().getId(), a._id);

                if (List4 != null && !List4.isEmpty()) {
                    GameGiftRecord GameGiftRecord5 = (GameGiftRecord) List4.get(0);

                    if (GameGiftRecord5.giftId != null && GameGiftRecord5.giftId.equals(a._id)) {
                        String2 = GameGiftRecord5.giftCode;
                        break label_35;
                    }
                }
            }
            String2 = null;
        }
        if (String2 != null)
            a(String2);
        if (String2 != null)
            int3 = 1;
        else
            int3 = 0;
        if (int3 != 0)
            return;
        else {
            switch (int1) {
                default:
                    setVisibility(8);
                    return;
                case 2:
                case 8:
                case 1:
                    setVisibility(8);
                    return;
                case 32:
                    setVisibility(0);
                    setText((CharSequence) "\u9886\u53D6");
                    setBackgroundResource(2130838100);
                    setOnClickListener((View$OnClickListener) new X(this, (byte) 0));
                    return;
            }
        }
    }

    public void setAccount(Account Account1) {
        c = Account1;
    }

    public void setGame(GiftGame GiftGame1) {
        b = GiftGame1;
    }

    public void setGift(GiftGameGift GiftGameGift1) {
        a = GiftGameGift1;
    }
}
