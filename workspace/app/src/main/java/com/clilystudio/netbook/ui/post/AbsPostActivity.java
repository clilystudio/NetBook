package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.widget.CommentItemView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;

public abstract class AbsPostActivity
        extends BaseLoadingActivity {
    protected String a;
    protected ScrollLoadListView b;
    protected PostHeader c;
    protected ReplyeeInfo e;
    private String f;

    static /* synthetic */ EditText a(AbsPostActivity absPostActivity) {
        return absPostActivity.p();
    }

    static /* synthetic */ String a(AbsPostActivity absPostActivity, String string) {
        absPostActivity.f = string;
        return string;
    }

    static /* synthetic */ boolean b(AbsPostActivity absPostActivity) {
        if (((TextView) absPostActivity.findViewById(2131494004)).getText().toString().length() > 512) {
            com.clilystudio.netbook.util.e.a((Activity) absPostActivity, (int) 2131034305);
            return false;
        }
        return true;
    }

    static /* synthetic */ void c(AbsPostActivity absPostActivity) {
        absPostActivity.p().setText("");
    }

    private EditText p() {
        return ((SendView) this.findViewById(2131494003)).b();
    }

    protected void a(Account account, String string) {
        h h2 = new h(this, (Activity) this, 2131034430);
        Object[] arrobject = new String[]{this.a, account.getToken(), string};
        h2.b(arrobject);
    }

    public final void a(ReplyeeInfo replyeeInfo, int n) {
        if (replyeeInfo != null && replyeeInfo.getAuthor() != null) {
            this.e = replyeeInfo;
            SendView sendView = (SendView) this.findViewById(2131494003);
            EditText editText = sendView.b();
            editText.setText("");
            Object[] arrobject = new Object[]{replyeeInfo.getAuthor().getNickname()};
            editText.setHint(String.format("\u56de\u590d %s\uff1a", arrobject));
            editText.requestFocus();
            ((InputMethodManager) this.getSystemService("input_method")).showSoftInput(editText, 0);
            if (n != -1) {
                this.b.setSelection(n);
            }
            sendView.c().setOnClickListener(new e(this, replyeeInfo, editText));
            return;
        }
        com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u8bf7\u91cd\u8bd5");
    }

    protected void a(ReplyeeInfo replyeeInfo, String string) {
        this.f = string;
        Account account = am.a((Activity) this);
        if (account == null) {
            return;
        }
        if (this.f.length() > 512) {
            com.clilystudio.netbook.util.e.a((Activity) this, (int) 2131034305);
            return;
        }
        g g2 = new g(this, (Activity) this, 2131034430);
        Object[] arrobject = new String[]{this.a, account.getToken(), this.f, replyeeInfo.getCommentId()};
        g2.b(arrobject);
    }

    public abstract void a(String var1);

    protected final void a(boolean bl) {
        TextView textView = (TextView) this.findViewById(2131494004);
        am.a((Context) this, (View) textView);
        if (bl) {
            textView.setText("");
        }
        textView.setHint("\u6dfb\u52a0\u8bc4\u8bba");
        this.findViewById(2131494005).setOnClickListener((View.OnClickListener) ((Object) new d(this, textView)));
    }

    public abstract void e(int var1);

    public abstract void f(int var1);

    public final void g(String string) {
        this.f = string;
    }

    public void j() {
        if (!this.getIntent().hasExtra("KEY_POST_REPLIER_INFO")) {
            return;
        }
        EditText editText = this.p();
        new Handler().postDelayed((Runnable) ((Object) new c(this, editText)), 200);
        this.a((ReplyeeInfo) this.getIntent().getSerializableExtra("KEY_POST_REPLIER_INFO"), 0);
    }

    public final void k() {
        int n = this.b.getChildCount();
        for (int i = 0; i < n; ++i) {
            View view = this.b.getChildAt(i);
            if (!(view instanceof CommentItemView)) continue;
            ((CommentItemView) view).a();
        }
    }

    public final String l() {
        return this.f;
    }

    public final ListView m() {
        return this.b;
    }

    public String n() {
        return this.a;
    }

    protected abstract void o();

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.clilystudio.netbook.hpay100.a.a.u(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.b != null) {
            this.b.setOnScrollListener((AbsListView.OnScrollListener) ((Object) new a(this)));
        }
    }
}
