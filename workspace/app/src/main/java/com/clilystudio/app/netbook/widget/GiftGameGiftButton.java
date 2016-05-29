package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.app.netbook.db.GameGiftRecord;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.GiftGame;
import com.clilystudio.app.netbook.model.GiftGameGift;
import com.clilystudio.app.netbook.util.t;
import com.clilystudio.app.netbook.view.a;

import java.util.List;

public class GiftGameGiftButton extends Button {
    private GiftGameGift a;
    private GiftGame b;
    private Account c;

    public GiftGameGiftButton(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    private void a(String paramString) {
        setVisibility(0);
        setText("查看");
        setBackgroundResource(2130837819);
        setOnClickListener(new U(this, paramString));
    }

    private void b(String paramString) {
        a locala = new a(getContext());
        View localView = View.inflate(getContext(), 2130903192, null);
        ((TextView) localView.findViewById(2131493395)).setText(this.a.title);
        TextView localTextView = (TextView) localView.findViewById(2131493397);
        ((TextView) localView.findViewById(2131493399)).setText(this.a.description);
        ((TextView) localView.findViewById(2131493401)).setText(this.a.usage);
        ((TextView) localView.findViewById(2131493400)).setText(t.b(this.a.rangeFrom) + " - " + t.b(this.a.rangeTo));
        locala.a(localView).show();
        Button localButton = (Button) localView.findViewById(2131493402);
        if (paramString == null) {
            localButton.setText("领取");
            localTextView.setText("已有 " + (this.a.totalCount - this.a.leftCount) + " 人领取，剩余 " + this.a.leftCount + " 个");
            localButton.setBackgroundResource(2131427379);
            localButton.setOnClickListener(new V(this, locala));
            return;
        }
        localTextView.setText("兑换码：" + paramString);
        localButton.setText("复制兑换码并打开游戏");
        localButton.setBackgroundResource(2131427378);
        localButton.setOnClickListener(new W(this, locala, paramString));
    }

    protected final void a() {
        b(null);
    }

    public final void a(int paramInt) {
        GameGiftRecord localGameGiftRecord;
        if (this.c != null) {
            List localList = GameGiftRecord.getRecords(this.c.getUser().getId(), this.a._id);
            if ((localList != null) && (!localList.isEmpty())) {
                localGameGiftRecord = (GameGiftRecord) localList.get(0);
                if ((localGameGiftRecord.giftId == null) || (!localGameGiftRecord.giftId.equals(this.a._id))) ;
            }
        }
        for (String str = localGameGiftRecord.giftCode; ; str = null) {
            if (str != null)
                a(str);
            if (str != null) ;
            for (int i = 1; i != 0; i = 0)
                return;
            switch (paramInt) {
                default:
                    setVisibility(8);
                    return;
                case 1:
                case 2:
                case 8:
                    setVisibility(8);
                    return;
                case 32:
            }
            setVisibility(0);
            setText("领取");
            setBackgroundResource(2130838100);
            setOnClickListener(new X(this, (byte) 0));
            return;
        }
    }

    public void setAccount(Account paramAccount) {
        this.c = paramAccount;
    }

    public void setGame(GiftGame paramGiftGame) {
        this.b = paramGiftGame;
    }

    public void setGift(GiftGameGift paramGiftGameGift) {
        this.a = paramGiftGameGift;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GiftGameGiftButton
 * JD-Core Version:    0.6.2
 */