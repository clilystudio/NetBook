package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Root;

public class PostAgreeView extends LinearLayout implements View.OnClickListener {
    private String a;

    public PostAgreeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onClick(View view) {
        Account account = am.a((Activity) ((Activity) this.getContext()));
        if (this.a != null && account != null) {
            this.setAgree(true);
            e<String, Void, Root> an2 = new e<String, Void, Root>(){
                String a;
                String b;

                @Override
                protected Root doInBackground(String... params) {
                    com.clilystudio.netbook.api.b.a();
                    this.a = params[0];
                    this.b = params[1];
                    return com.clilystudio.netbook.api.b.b().F(params[0], params[1]);
                }

                @Override
                protected void onPostExecute(Root root) {
                    super.onPostExecute(root);
                    if (root != null && root.isOk()) {
                        setOnClickListener(null);
                        PostAgreeRecord.add(this.b, this.a);
                     } else {
                        com.clilystudio.netbook.util.e.a((Activity) ((Activity) getContext()), (String) "已同感");
                        PostAgreeRecord.add(this.b, this.a);
                    }
                }
            };
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
        View view = this.findViewById(R.id.agree);
        if (bl) {
            this.setOnClickListener(null);
            view.setEnabled(false);
            this.setBackgroundResource(R.drawable.bg_agree_btn_disabled);
            return;
        }
        this.setOnClickListener(this);
        view.setEnabled(true);
        this.setBackgroundResource(R.drawable.bg_agree_btn);
    }

    public void setPostId(String string) {
        String string2 = this.a = string;
        Account account = am.e();
        if (account != null && PostAgreeRecord.get(account.getToken(), string2) != null) {
            this.setAgree(true);
        }
    }
}
