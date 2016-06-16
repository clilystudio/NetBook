package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.db.PostUsefulRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public class PostUsefulView extends LinearLayout implements View.OnClickListener {
    private Review a;
    private View b;
    private View c;
    private Activity d;
    private boolean e;

    public PostUsefulView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (context instanceof AbsPostActivity) {
            this.d = (AbsPostActivity) context;
            return;
        }
        throw new IllegalStateException("PostUsefulView must be used at post detail");
    }

    static /* synthetic */ void a(PostUsefulView postUsefulView, int n) {
        Account account = am.e();
        if (account != null) {
            PostUsefulRecord.create(account.getUser().getId(), postUsefulView.a.get_id(), n);
        }
    }

    static /* synthetic */ void a(PostUsefulView postUsefulView, int n, boolean bl) {
        postUsefulView.a(n, true);
    }

    static /* synthetic */ boolean a(PostUsefulView postUsefulView) {
        return postUsefulView.e;
    }

    static /* synthetic */ Activity b(PostUsefulView postUsefulView) {
        return postUsefulView.d;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, boolean bl) {
        TextView textView;
        int n2;
        TextView textView2;
        int n3;
        int n4;
        if (n == 1) {
            int n5 = this.a.getHelpful().getYes();
            TextView textView3 = (TextView) this.findViewById(R.id.review_useful_yes_count);
            TextView textView4 = (TextView) this.findViewById(R.id.review_useful_yes_label);
            int n6 = this.getResources().getColor(R.color.review_useful_yes_pre);
            n4 = R.drawable.review_useful_yes_pre;
            textView2 = textView4;
            n2 = n6;
            n3 = n5;
            textView = textView3;
        } else {
            int n7 = this.a.getHelpful().getNo();
            TextView textView5 = (TextView) this.findViewById(R.id.review_useful_no_count);
            TextView textView6 = (TextView) this.findViewById(R.id.review_useful_no_label);
            int n8 = this.getResources().getColor(R.color.review_useful_no_pre);
            n4 = R.drawable.review_useful_no_pre;
            textView2 = textView6;
            n2 = n8;
            n3 = n7;
            textView = textView5;
        }
        if (bl) {
            ++n3;
        }
        textView.setText("" + n3);
        textView.setTextColor(n2);
        textView2.setTextColor(n2);
        textView2.setCompoundDrawablesWithIntrinsicBounds(n4, 0, 0, 0);
        this.b.setEnabled(false);
        this.c.setEnabled(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        Account account = am.e();
        if (account == null) {
            e.a((Activity) this.d, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
            this.d.startActivity(AuthLoginActivity.a(this.d));
            account = null;
        }
        switch (view.getId()) {
            case R.id.review_useful_yes: {
                if (account == null) return;
                {
                    this.e = true;
                    as as2 = new as(this, 0);
                    String[] arrstring = new String[]{account.getToken(), this.a.get_id(), "yes"};
                    as2.b(arrstring);
                    return;
                }
            }
            default: {
                return;
            }
            case R.id.review_useful_no:
        }
        if (account == null) return;
        {
            this.e = false;
            as as3 = new as(this, 0);
            String[] arrstring = new String[]{account.getToken(), this.a.get_id(), "no"};
            as3.b(arrstring);
            return;
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = this.findViewById(R.id.review_useful_yes);
        this.c = this.findViewById(R.id.review_useful_no);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
    }

    public void setPost(Review review) {
        PostUsefulRecord postUsefulRecord;
        this.a = review;
        ((TextView) this.findViewById(R.id.review_useful_yes_count)).setText("" + this.a.getHelpful().getYes());
        ((TextView) this.findViewById(R.id.review_useful_no_count)).setText("" + this.a.getHelpful().getNo());
        Account account = am.e();
        if (account != null && (postUsefulRecord = PostUsefulRecord.get(account.getUser().getId(), this.a.get_id())) != null && postUsefulRecord.type != 0) {
            this.a(postUsefulRecord.type, false);
        }
    }
}
