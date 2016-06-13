package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.game.ao;

public class GiftGameGameButton
        extends Button {
    private GiftGame a;

    public GiftGameGameButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(GiftGameGameButton giftGameGameButton) {
        giftGameGameButton.h();
    }

    static /* synthetic */ GiftGame b(GiftGameGameButton giftGameGameButton) {
        return giftGameGameButton.a;
    }

    private void h() {
        if (this.a.getAndroidPackageName() != null) {
            new DownloadItem(this.a.getAndroidPackageName()).save();
        }
    }

    protected void a() {
        this.setText("\u6211\u8981\u9886");
        this.setTextColor(this.getResources().getColor(2131427548));
        this.setBackgroundResource(2130837819);
    }

    public final void a(int n) {
        if (this.a == null) {
            return;
        }
        switch (n) {
            default: {
                this.a();
                this.setOnClickListener(new T(this, 0));
                return;
            }
            case 1:
            case 2: {
                this.b();
                this.setOnClickListener(null);
                return;
            }
            case 8: {
                this.c();
                this.setOnClickListener(new R(this, 0));
                return;
            }
            case 32:
        }
        this.setText("\u6253\u5f00");
        this.setTextColor(this.getResources().getColor(2131427356));
        this.setBackgroundResource(2130837817);
        this.setOnClickListener(new S(this, 0));
    }

    protected void b() {
        this.setText("\u4e0b\u8f7d\u4e2d");
        this.setTextColor(this.getResources().getColor(2131427356));
        this.setBackgroundResource(2130837729);
    }

    protected void c() {
        this.setText("\u5b89\u88c5");
        this.setTextColor(this.getResources().getColor(2131427548));
        this.setBackgroundResource(2130837819);
    }

    protected void d() {
        View view = View.inflate(this.getContext(), 2130903194, null);
        ((SmartImageView) view.findViewById(2131493394)).setImageUrl(this.a.icon);
        ((TextView) view.findViewById(2131493397)).setText("\u6709 " + this.a.followers + " \u4e2a\u5c0f\u4f19\u4f34\u6b63\u5728\u73a9");
        ((TextView) view.findViewById(2131493395)).setText(this.a.getName());
        ((TextView) view.findViewById(2131493396)).setText(a.c(this.a.androidSize));
        com.clilystudio.netbook.view.a a2 = new com.clilystudio.netbook.view.a(this.getContext());
        ao.a((Activity) this.getContext(), this.a);
        GiftGameGetButton giftGameGetButton = (GiftGameGetButton) view.findViewById(2131493398);
        giftGameGetButton.setGame(this.a);
        giftGameGetButton.a(this.a.getDownloadStatus());
        giftGameGetButton.setBottomDialog(a2);
        a2.a(view).show();
    }

    protected final void e() {
        this.h();
        new ao((Activity) this.getContext(), this.a).a();
    }

    protected final void f() {
        am.d((Context) this.getContext(), (String) this.a.getAndroidPackageName());
    }

    public final GiftGame g() {
        return this.a;
    }

    public void setGame(GiftGame giftGame) {
        this.a = giftGame;
    }
}
