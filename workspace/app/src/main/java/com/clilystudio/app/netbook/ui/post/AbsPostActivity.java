package com.clilystudio.app.netbook.ui.post;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ReplyeeInfo;
import com.clilystudio.app.netbook.ui.BaseLoadingActivity;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.widget.CommentItemView;
import com.clilystudio.app.netbook.widget.PostHeader;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.SendView;

public abstract class AbsPostActivity extends BaseLoadingActivity {
    protected String a;
    protected ScrollLoadListView b;
    protected PostHeader c;
    protected ReplyeeInfo e;
    private String f;

    private EditText p() {
        return ((SendView) findViewById(2131494003)).b();
    }

    protected void a(Account paramAccount, String paramString) {
        h localh = new h(this, this, 2131034430);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = this.a;
        arrayOfString[1] = paramAccount.getToken();
        arrayOfString[2] = paramString;
        localh.b(arrayOfString);
    }

    public final void a(ReplyeeInfo paramReplyeeInfo, int paramInt) {
        if ((paramReplyeeInfo != null) && (paramReplyeeInfo.getAuthor() != null)) {
            this.e = paramReplyeeInfo;
            SendView localSendView = (SendView) findViewById(2131494003);
            EditText localEditText = localSendView.b();
            localEditText.setText("");
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = paramReplyeeInfo.getAuthor().getNickname();
            localEditText.setHint(String.format("回复 %s：", arrayOfObject));
            localEditText.requestFocus();
            ((InputMethodManager) getSystemService("input_method")).showSoftInput(localEditText, 0);
            if (paramInt != -1)
                this.b.setSelection(paramInt);
            localSendView.c().setOnClickListener(new e(this, paramReplyeeInfo, localEditText));
            return;
        }
        com.clilystudio.app.netbook.util.e.a(this, "请重试");
    }

    protected void a(ReplyeeInfo paramReplyeeInfo, String paramString) {
        this.f = paramString;
        Account localAccount = am_CommonUtils.a_getLoginAccount(this);
        if (localAccount == null)
            return;
        if (this.f.length() > 512) {
            com.clilystudio.app.netbook.util.e.a(this, 2131034305);
            return;
        }
        g localg = new g(this, this, 2131034430);
        String[] arrayOfString = new String[4];
        arrayOfString[0] = this.a;
        arrayOfString[1] = localAccount.getToken();
        arrayOfString[2] = this.f;
        arrayOfString[3] = paramReplyeeInfo.getCommentId();
        localg.b(arrayOfString);
    }

    public abstract void a(String paramString);

    protected final void a(boolean paramBoolean) {
        TextView localTextView = (TextView) findViewById(2131494004);
        am_CommonUtils.a_hideSoftInput(this, localTextView);
        if (paramBoolean)
            localTextView.setText("");
        localTextView.setHint("添加评论");
        findViewById(2131494005).setOnClickListener(new d(this, localTextView));
    }

    public abstract void e(int paramInt);

    public abstract void f(int paramInt);

    public final void g(String paramString) {
        this.f = paramString;
    }

    public void j() {
        if (!getIntent().hasExtra("KEY_POST_REPLIER_INFO"))
            return;
        EditText localEditText = p();
        new Handler().postDelayed(new c(this, localEditText), 200L);
        a((ReplyeeInfo) getIntent().getSerializableExtra("KEY_POST_REPLIER_INFO"), 0);
    }

    public final void k() {
        int i = this.b.getChildCount();
        for (int j = 0; j < i; j++) {
            View localView = this.b.getChildAt(j);
            if ((localView instanceof CommentItemView))
                ((CommentItemView) localView).a();
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

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.arcsoft.hpay100.a.a.u(this);
    }

    public void onResume() {
        super.onResume();
        if (this.b != null)
            this.b.setOnScrollListener(new a(this));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.AbsPostActivity
 * JD-Core Version:    0.6.2
 */