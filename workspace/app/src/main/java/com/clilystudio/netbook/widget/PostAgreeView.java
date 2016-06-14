package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Account;

public class PostAgreeView extends LinearLayout
        implements View.OnClickListener {
    private String a;

    public PostAgreeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onClick(View view) {
        Account account = am.a((Activity) ((Activity) this.getContext()));
        if (this.a != null && account != null) {
            this.setAgree(true);
            an an2 = new an(this, 0);
            String[] arrstring = new String[]{this.a, account.getToken()};
            an2.b(arrstring);
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setOnClickListener(this);
    }

    public void setAgree(boolean bl) {
        View view = this.findViewById(2131493841);
        if (bl) {
            this.setOnClickListener(null);
            view.setEnabled(false);
            this.setBackgroundResource(2130837618);
            return;
        }
        this.setOnClickListener(this);
        view.setEnabled(true);
        this.setBackgroundResource(2130837617);
    }

    public void setPostId(String string) {
        String string2 = this.a = string;
        Account account = am.e();
        if (account != null && PostAgreeRecord.get(account.getToken(), string2) != null) {
            this.setAgree(true);
        }
    }
}
