package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.app.netbook.db.PostUsefulRecord;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Review;
import com.clilystudio.app.netbook.ui.post.AbsPostActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.util.am_CommonUtils;

public class PostUsefulView extends LinearLayout
        implements View.OnClickListener {
    private Review a;
    private View b;
    private View c;
    private Activity d;
    private boolean e;

    public PostUsefulView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        if ((paramContext instanceof AbsPostActivity)) {
            this.d = ((AbsPostActivity) paramContext);
            return;
        }
        throw new IllegalStateException("PostUsefulView must be used at post detail");
    }

    private void a(int paramInt, boolean paramBoolean) {
        TextView localTextView3;
        int k;
        Object localObject1;
        int m;
        int n;
        if (paramInt == 1) {
            int i1 = this.a.getHelpful().getYes();
            localTextView3 = (TextView) findViewById(2131493354);
            TextView localTextView4 = (TextView) findViewById(2131493355);
            int i2 = getResources().getColor(2131427510);
            k = 2130838115;
            localObject1 = localTextView4;
            m = i2;
            n = i1;
        }
        TextView localTextView1;
        for (Object localObject2 = localTextView3; ; localObject2 = localTextView1) {
            if (paramBoolean)
                n++;
            ((TextView) localObject2).setText(n);
            ((TextView) localObject2).setTextColor(m);
            ((TextView) localObject1).setTextColor(m);
            ((TextView) localObject1).setCompoundDrawablesWithIntrinsicBounds(k, 0, 0, 0);
            this.b.setEnabled(false);
            this.c.setEnabled(false);
            return;
            int i = this.a.getHelpful().getNo();
            localTextView1 = (TextView) findViewById(2131493357);
            TextView localTextView2 = (TextView) findViewById(2131493358);
            int j = getResources().getColor(2131427509);
            k = 2130838113;
            localObject1 = localTextView2;
            m = j;
            n = i;
        }
    }

    public void onClick(View paramView) {
        Account localAccount = am_CommonUtils.e();
        if (localAccount == null) {
            e.a(this.d, "请登录后再操作");
            this.d.startActivity(AuthLoginActivity.a(this.d));
            localAccount = null;
        }
        switch (paramView.getId()) {
            case 2131493354:
            case 2131493355:
            default:
            case 2131493353:
            case 2131493356:
        }
        do {
            do
                return;
            while (localAccount == null);
            this.e = true;
            as localas2 = new as(this, (byte) 0);
            String[] arrayOfString2 = new String[3];
            arrayOfString2[0] = localAccount.getToken();
            arrayOfString2[1] = this.a.get_id();
            arrayOfString2[2] = "yes";
            localas2.b(arrayOfString2);
            return;
        }
        while (localAccount == null);
        this.e = false;
        as localas1 = new as(this, (byte) 0);
        String[] arrayOfString1 = new String[3];
        arrayOfString1[0] = localAccount.getToken();
        arrayOfString1[1] = this.a.get_id();
        arrayOfString1[2] = "no";
        localas1.b(arrayOfString1);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = findViewById(2131493353);
        this.c = findViewById(2131493356);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
    }

    public void setPost(Review paramReview) {
        this.a = paramReview;
        ((TextView) findViewById(2131493354)).setText(this.a.getHelpful().getYes());
        ((TextView) findViewById(2131493357)).setText(this.a.getHelpful().getNo());
        Account localAccount = am_CommonUtils.e();
        if (localAccount != null) {
            PostUsefulRecord localPostUsefulRecord = PostUsefulRecord.get(localAccount.getUser().getId(), this.a.get_id());
            if ((localPostUsefulRecord != null) && (localPostUsefulRecord.type != 0))
                a(localPostUsefulRecord.type, false);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.PostUsefulView
 * JD-Core Version:    0.6.2
 */