package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.game.ao;

public class GiftGameGameButton extends Button {

    private GiftGame a;

    public GiftGameGameButton(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(GiftGameGameButton GiftGameGameButton1) {
        GiftGameGameButton1.h();
    }

    static GiftGame b(GiftGameGameButton GiftGameGameButton1) {
        return GiftGameGameButton1.a;
    }

    private void h() {
        if (a.getAndroidPackageName() != null)
            new DownloadItem(a.getAndroidPackageName()).save();
    }

    protected void a() {
        setText((CharSequence) "\u6211\u8981\u9886");
        setTextColor(getResources().getColor(2131427548));
        setBackgroundResource(2130837819);
    }

    public final void a(int int1) {
        if (a == null)
            return;
        else {
            switch (int1) {
                default:
                    a();
                    setOnClickListener((View$OnClickListener) new T(this, (byte) 0));
                    return;
                case 2:
                case 1:
                    b();
                    setOnClickListener(null);
                    return;
                case 8:
                    c();
                    setOnClickListener((View$OnClickListener) new R(this, (byte) 0));
                    return;
                case 32:
                    setText((CharSequence) "\u6253\u5F00");
                    setTextColor(getResources().getColor(2131427356));
                    setBackgroundResource(2130837817);
                    setOnClickListener((View$OnClickListener) new S(this, (byte) 0));
                    return;
            }
        }
    }

    protected void b() {
        setText((CharSequence) "\u4E0B\u8F7D\u4E2D");
        setTextColor(getResources().getColor(2131427356));
        setBackgroundResource(2130837729);
    }

    protected void c() {
        setText((CharSequence) "\u5B89\u88C5");
        setTextColor(getResources().getColor(2131427548));
        setBackgroundResource(2130837819);
    }

    protected void d() {
        View View1 = View.inflate(getContext(), 2130903194, null);
        com.clilystudio.netbook.view.a a2;
        GiftGameGetButton GiftGameGetButton3;

        ((SmartImageView) View1.findViewById(2131493394)).setImageUrl(a.icon);
        ((TextView) View1.findViewById(2131493397)).setText((CharSequence) new StringBuilder("\u6709 ").append(a.followers).append(" \u4E2A\u5C0F\u4F19\u4F34\u6B63\u5728\u73A9").toString());
        ((TextView) View1.findViewById(2131493395)).setText((CharSequence) a.getName());
        ((TextView) View1.findViewById(2131493396)).setText((CharSequence) com.clilystudio.netbook.hpay100.a.a.c(a.androidSize));
        a2 = new com.clilystudio.netbook.view.a(getContext());
        ao.a((Activity) getContext(), a);
        GiftGameGetButton3 = (GiftGameGetButton) View1.findViewById(2131493398);
        GiftGameGetButton3.setGame(a);
        GiftGameGetButton3.a(a.getDownloadStatus());
        GiftGameGetButton3.setBottomDialog(a2);
        a2.a(View1).show();
    }

    protected final void e() {
        h();
        new ao((Activity) getContext(), a).a();
    }

    protected final void f() {
        am.d(getContext(), a.getAndroidPackageName());
    }

    public final GiftGame g() {
        return a;
    }

    public void setGame(GiftGame GiftGame1) {
        a = GiftGame1;
    }
}
