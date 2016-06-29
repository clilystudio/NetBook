package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.widget.CommentItemView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;

public abstract class AbsPostActivity extends BaseLoadingActivity {
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
        if (((TextView) absPostActivity.findViewById(R.id.send_content)).getText().toString().length() > 512) {
            com.clilystudio.netbook.util.e.a((Activity) absPostActivity, (int) R.string.alert_too_many_words);
            return false;
        }
        return true;
    }

    static /* synthetic */ void c(AbsPostActivity absPostActivity) {
        absPostActivity.p().setText("");
    }

    private EditText p() {
        return ((SendView) this.findViewById(R.id.bottom_container)).b();
    }

    protected void a(Account account, String string) {
        h h2 = new h(this, (Activity) this, R.string.post_publish_loading);
        Object[] arrobject = new String[]{this.a, account.getToken(), string};
        h2.b(arrobject);
    }

    public final void a(final ReplyeeInfo replyeeInfo, int n) {
        if (replyeeInfo != null && replyeeInfo.getAuthor() != null) {
            this.e = replyeeInfo;
            SendView sendView = (SendView) this.findViewById(R.id.bottom_container);
            final EditText editText = sendView.b();
            editText.setText("");
            Object[] arrobject = new Object[]{replyeeInfo.getAuthor().getNickname()};
            editText.setHint(String.format("\u56de\u590d %s\uff1a", arrobject));
            editText.requestFocus();
            ((InputMethodManager) this.getSystemService("input_method")).showSoftInput(editText, 0);
            if (n != -1) {
                this.b.setSelection(n);
            }
            sendView.c().setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    AbsPostActivity.this.a(replyeeInfo, editText.getText().toString());
                }
            });
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
            com.clilystudio.netbook.util.e.a((Activity) this, (int) R.string.alert_too_many_words);
            return;
        }
        g g2 = new g(this, (Activity) this, R.string.post_publish_loading);
        Object[] arrobject = new String[]{this.a, account.getToken(), this.f, replyeeInfo.getCommentId()};
        g2.b(arrobject);
    }

    public abstract void a(String var1);

    protected final void a(boolean bl) {
        final TextView textView = (TextView) this.findViewById(R.id.send_content);
        am.a((Context) this, (View) textView);
        if (bl) {
            textView.setText("");
        }
        textView.setHint("\u6dfb\u52a0\u8bc4\u8bba");
        this.findViewById(R.id.commit).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Account account = am.a(AbsPostActivity.this);
                if (account != null && AbsPostActivity.b(AbsPostActivity.this)) {
                    AbsPostActivity.this.e = null;
                    String string = textView.getText().toString();
                    AbsPostActivity.a(AbsPostActivity.this, string);
                    AbsPostActivity.this.a(account, string);
                }
            }
        });
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
        final EditText editText = this.p();
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                AbsPostActivity.this.getWindow().setSoftInputMode(5);
                editText.requestFocus();
                ((InputMethodManager) AbsPostActivity.this.getSystemService(INPUT_METHOD_SERVICE)).showSoftInput(editText, 1);
            }
        }, 200);
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
            this.b.setOnScrollListener(new AbsListView.OnScrollListener() {
                @Override
                public void onScrollStateChanged(AbsListView view, int scrollState) {
                    AbsPostActivity.this.b.onScrollStateChanged(view, scrollState);
                    if (scrollState == 1) {
                        new Handler().post(new Runnable() {
                            @Override
                            public void run() {
                                EditText editText = AbsPostActivity.a(AbsPostActivity.this);
                                editText.clearFocus();
                                ((InputMethodManager) AbsPostActivity.this.getSystemService(INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(editText.getWindowToken(), 0);
                            }
                        });
                    }
                }

                @Override
                public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
                    AbsPostActivity.this.b.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
                }
            });
        }
    }
}
