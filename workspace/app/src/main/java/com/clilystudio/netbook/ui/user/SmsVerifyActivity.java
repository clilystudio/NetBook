package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Timer;
import java.util.TimerTask;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class SmsVerifyActivity
        extends BaseActivity {
    Handler a;
    @InjectView(value = 2131493215)
    TextView mAppNameText;
    @InjectView(value = 2131493220)
    EditText mCodeText;
    @InjectView(value = 2131493221)
    Button mCommitBtn;
    @InjectView(value = 2131493216)
    TextView mGoodsText;
    @InjectView(value = 2131493218)
    TextView mPhoneText;
    @InjectView(value = 2131493217)
    TextView mPriceText;
    @InjectView(value = 2131493219)
    Button mSendCodeBtn;
    private ChargePlan b;
    private Timer c;
    private TimerTask e;
    private int f;

    public SmsVerifyActivity() {
        this.a = new av(this);
    }

    public static Intent a(Context context, ChargePlan chargePlan, String string) {
        return new d().a(context, SmsVerifyActivity.class).a("key_charge_plan_verify", chargePlan).a("key_charge_plan_phone", string).a();
    }

    static /* synthetic */ void a(SmsVerifyActivity smsVerifyActivity) {
        smsVerifyActivity.b();
    }

    static /* synthetic */ void a(SmsVerifyActivity smsVerifyActivity, int n) {
        smsVerifyActivity.a(n);
    }

    static /* synthetic */ void a(SmsVerifyActivity smsVerifyActivity, boolean bl) {
        smsVerifyActivity.a(bl);
    }

    static /* synthetic */ int b(SmsVerifyActivity smsVerifyActivity) {
        return smsVerifyActivity.f;
    }

    static /* synthetic */ int c(SmsVerifyActivity smsVerifyActivity) {
        int n = smsVerifyActivity.f;
        smsVerifyActivity.f = n - 1;
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n) {
        if (n > 0) {
            Button button = this.mSendCodeBtn;
            String string = this.getString(2131034515);
            Object[] arrobject = new Object[]{n};
            button.setText(String.format(string, arrobject));
            this.mSendCodeBtn.setBackgroundResource(2130837690);
            this.mSendCodeBtn.setClickable(false);
            this.mSendCodeBtn.setEnabled(false);
        } else {
            if (this.e != null) {
                this.e.cancel();
            }
            this.mSendCodeBtn.setText(2131034516);
            this.mSendCodeBtn.setBackgroundResource(2130837745);
            this.mSendCodeBtn.setClickable(true);
            this.mSendCodeBtn.setEnabled(true);
        }
        this.mSendCodeBtn.setTextColor(this.getResources().getColor(2131427548));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        Button button = this.mCommitBtn;
        int n = bl ? 2130837693 : 2130837690;
        button.setBackgroundResource(n);
        this.mCommitBtn.setClickable(bl);
        this.mCommitBtn.setEnabled(bl);
        this.mCommitBtn.setTextColor(this.getResources().getColor(2131427548));
    }

    private void b() {
        this.f = 60;
        this.e = new aw(this);
        this.c.schedule(this.e, 1000, 1000);
        this.a(this.f);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903132);
        this.b("\u77ed\u4fe1\u5145\u503c");
        ButterKnife.inject(this);
        this.b = (ChargePlan) this.getIntent().getSerializableExtra("key_charge_plan_verify");
        this.mAppNameText.setText("\u8ffd\u4e66\u795e\u5668");
        this.mGoodsText.setText(this.b.getString());
        this.mPriceText.setText("" + this.b.getPrice() + "\u5143");
        this.mPhoneText.setText(this.getIntent().getStringExtra("key_charge_plan_phone"));
        Button button = this.mSendCodeBtn;
        String string = this.getString(2131034515);
        Object[] arrobject = new Object[]{60};
        button.setText(String.format(string, arrobject));
        this.a(false);
        this.c = new Timer();
        this.b();
        this.mSendCodeBtn.setOnClickListener(new as(this));
        this.mCodeText.addTextChangedListener(new at(this));
        this.mCommitBtn.setOnClickListener(new au(this));
    }
}
