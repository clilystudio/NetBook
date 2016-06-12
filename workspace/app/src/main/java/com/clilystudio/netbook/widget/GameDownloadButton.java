package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.res.Resources;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View$OnClickListener;
import android.widget.Button;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;
import com.clilystudio.netbook.ui.game.s;
import com.clilystudio.netbook.util.e;

public class GameDownloadButton extends Button {

    private Game a;

    public GameDownloadButton(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static Game a(GameDownloadButton GameDownloadButton1) {
        return GameDownloadButton1.a;
    }

    static void b(GameDownloadButton GameDownloadButton1) {
        GameDownloadButton1.i();
    }

    private void i() {
        if (a.getAndroidPackageName() != null)
            new DownloadItem(a.getAndroidPackageName()).save();
    }

    protected void a() {
        setText((CharSequence) "\u4E0B\u8F7D");
        setBackgroundResource(2130838100);
    }

    public final void a(int int1) {
        if (a == null)
            return;
        else {
            switch (int1) {
                default:
                    a();
                    setOnClickListener((View$OnClickListener) new C(this, (byte) 0));
                    return;
                case 2:
                case 1:
                    b();
                    setOnClickListener(null);
                    return;
                case 8:
                    c();
                    setOnClickListener((View$OnClickListener) new A(this, (byte) 0));
                    return;
                case 32:
                    d();
                    setOnClickListener((View$OnClickListener) new B(this, (byte) 0));
                    return;
            }
        }
    }

    protected void b() {
        setText((CharSequence) "\u4E0B\u8F7D\u4E2D");
        setBackgroundResource(2130837817);
    }

    protected void c() {
        setText((CharSequence) "\u5B89\u88C5");
        setBackgroundResource(2130837819);
    }

    protected void d() {
        setText((CharSequence) "\u6253\u5F00");
        setBackgroundResource(2130838116);
    }

    protected void e() {
        Context Context1 = getContext();

        if (Context1 instanceof GameDetailActivity)
            com.clilystudio.netbook.umeng.a.b.a(getContext(), "game_center_detail_install", a.getName());
        com.clilystudio.netbook.umeng.a.b.a(Context1, "game_center_app_download", a.getName());
        if (com.clilystudio.netbook.hpay100.a.a.r(Context1) == 1) {
            e.a((Activity) Context1, "\u5F00\u59CB\u4E0B\u8F7D...");
            f();
        } else {
            k k2 = new k(Context1).a((CharSequence) "\u6D41\u91CF\u63D0\u9192");
            Resources Resources3 = getResources();
            Object[] Object_1darray4 = new Object[1];

            Object_1darray4[0] = com.clilystudio.netbook.hpay100.a.a.c(a.getAndroidSize());
            k2.b((CharSequence) Resources3.getString(2131034304, Object_1darray4)).a(2131034424, (DialogInterface$OnClickListener) new z(this)).b(2131034129, null).b().show();
        }
    }

    protected final void f() {
        i();
        new s((Activity) getContext(), a).a();
    }

    protected final void g() {
        am.d(getContext(), a.getAndroidPackageName());
    }

    public final Game h() {
        return a;
    }

    public void setGame(Game Game1) {
        a = Game1;
    }

    public void setH5View() {
        setText((CharSequence) "\u8BD5\u73A9");
        setBackgroundResource(2130838100);
    }

    public void setPlayedView() {
        setText((CharSequence) "\u7EE7\u7EED");
        setBackgroundResource(2130838100);
    }
}
