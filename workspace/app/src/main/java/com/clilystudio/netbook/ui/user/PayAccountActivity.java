package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.p;
import com.clilystudio.netbook.widget.PaySectionItem;
import com.umeng.a.b;

import java.text.SimpleDateFormat;
import java.util.Locale;

public class PayAccountActivity
        extends BaseActivity
        implements View.OnClickListener {
    private String a;
    private PaySectionItem b;
    private PaySectionItem c;
    private String e;
    private TextView f;

    public static Intent a(Context context, String string) {
        return new d().a(context, PayAccountActivity.class).a("key_token", string).a();
    }

    static /* synthetic */ String a(PayAccountActivity payAccountActivity) {
        return payAccountActivity.a;
    }

    static /* synthetic */ PaySectionItem b(PayAccountActivity payAccountActivity) {
        return payAccountActivity.b;
    }

    static /* synthetic */ PaySectionItem c(PayAccountActivity payAccountActivity) {
        return payAccountActivity.c;
    }

    static /* synthetic */ TextView d(PayAccountActivity payAccountActivity) {
        return payAccountActivity.f;
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493803: {
                this.startActivity(PayVoucherActivity.a(this, this.getIntent().getStringExtra("key_token")));
                return;
            }
            case 2131493804: {
                this.startActivity(PayChargeActivity.a(this, this.getIntent().getStringExtra("key_token"), "\u5145\u503c\u8bb0\u5f55"));
                return;
            }
            case 2131493805: {
                this.startActivity(PayConsumeActivity.a(this, this.getIntent().getStringExtra("key_token"), "\u6d88\u8d39\u8bb0\u5f55"));
                return;
            }
            case 2131493807: {
                b.a(this, "user_remove_ad_click");
                this.startActivity(new Intent(this, RemoveAdActivity.class));
                return;
            }
            case 2131493199:
        }
        new p((Activity) this).a();
        b.a(this, "charge_click_count");
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
        this.setContentView(2130903329);
        this.b("\u6211\u7684\u8d26\u6237");
        this.b = (PaySectionItem) this.findViewById(2131493802);
        this.c = (PaySectionItem) this.findViewById(2131493803);
        PaySectionItem paySectionItem = (PaySectionItem) this.findViewById(2131493804);
        PaySectionItem paySectionItem2 = (PaySectionItem) this.findViewById(2131493805);
        PaySectionItem paySectionItem3 = (PaySectionItem) this.findViewById(2131493807);
        TextView textView = (TextView) this.findViewById(2131493806);
        if (a.y(this)) {
            textView.setVisibility(0);
            paySectionItem3.setVisibility(0);
        }
        this.b.setBalanceDefault();
        this.c.setBalanceDefault();
        this.b.b().setOnClickListener(this);
        this.c.setOnClickListener(this);
        paySectionItem.setOnClickListener(this);
        paySectionItem2.setOnClickListener(this);
        paySectionItem3.setOnClickListener(this);
        this.f = (TextView) paySectionItem3.findViewById(2131493481);
        this.a = this.getIntent().getStringExtra("key_token");
        I i2 = new I(this, this);
        String[] arrstring = new String[]{this.a};
        i2.b(arrstring);
        J j = new J(this);
        String[] arrstring2 = new String[]{this.a};
        j.b(arrstring2);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onHideAdEvent(s s2) {
        if (this.f != null && s2.a() != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
            this.f.setText("\u622a\u6b62\u81f3" + simpleDateFormat.format(s2.a()));
            this.f.setVisibility(0);
        }
    }

    @l
    public void onPayFinish(y y2) {
        if (y2.a()) {
            H h2 = new H(this, this, "\u6b63\u5728\u67e5\u8be2\u652f\u4ed8\u7ed3\u679c...");
            String[] arrstring = new String[]{this.e};
            h2.b(arrstring);
        }
    }

    @l
    public void onPayStart(z z2) {
        this.e = z2.a();
    }
}
