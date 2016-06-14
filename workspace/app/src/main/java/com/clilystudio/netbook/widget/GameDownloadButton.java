package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.widget.Button;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;
import com.clilystudio.netbook.ui.game.s;
import com.clilystudio.netbook.util.e;
import com.umeng.a.b;

public class GameDownloadButton extends Button {
    private Game a;

    public GameDownloadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ Game a(GameDownloadButton gameDownloadButton) {
        return gameDownloadButton.a;
    }

    static /* synthetic */ void b(GameDownloadButton gameDownloadButton) {
        gameDownloadButton.i();
    }

    private void i() {
        if (this.a.getAndroidPackageName() != null) {
            new DownloadItem(this.a.getAndroidPackageName()).save();
        }
    }

    protected void a() {
        this.setText("\u4e0b\u8f7d");
        this.setBackgroundResource(2130838100);
    }

    public final void a(int n) {
        if (this.a == null) {
            return;
        }
        switch (n) {
            default: {
                this.a();
                this.setOnClickListener(new C(this, 0));
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
                this.setOnClickListener(new A(this, 0));
                return;
            }
            case 32:
        }
        this.d();
        this.setOnClickListener(new B(this, 0));
    }

    protected void b() {
        this.setText("\u4e0b\u8f7d\u4e2d");
        this.setBackgroundResource(2130837817);
    }

    protected void c() {
        this.setText("\u5b89\u88c5");
        this.setBackgroundResource(2130837819);
    }

    protected void d() {
        this.setText("\u6253\u5f00");
        this.setBackgroundResource(2130838116);
    }

    protected void e() {
        Context context = this.getContext();
        if (context instanceof GameDetailActivity) {
            b.a(this.getContext(), "game_center_detail_install", this.a.getName());
        }
        b.a(context, "game_center_app_download", this.a.getName());
        if (a.r(context) == 1) {
            e.a((Activity) ((Activity) context), (String) "\u5f00\u59cb\u4e0b\u8f7d...");
            this.f();
            return;
        }
        k k2 = new k(context).a("\u6d41\u91cf\u63d0\u9192");
        Resources resources = this.getResources();
        Object[] arrobject = new Object[]{a.c(this.a.getAndroidSize())};
        k2.b(resources.getString(2131034304, arrobject)).a(2131034424, (DialogInterface.OnClickListener) ((Object) new z(this))).b(2131034129, null).b().show();
    }

    protected final void f() {
        this.i();
        new s((Activity) this.getContext(), this.a).a();
    }

    protected final void g() {
        am.d((Context) this.getContext(), (String) this.a.getAndroidPackageName());
    }

    public final Game h() {
        return this.a;
    }

    public void setGame(Game game) {
        this.a = game;
    }

    public void setH5View() {
        this.setText("\u8bd5\u73a9");
        this.setBackgroundResource(2130838100);
    }

    public void setPlayedView() {
        this.setText("\u7ee7\u7eed");
        this.setBackgroundResource(2130838100);
    }
}
