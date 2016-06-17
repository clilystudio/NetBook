package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.regex.Pattern;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class SmsSendActivity extends BaseActivity {
    View mErrorLine;
    Button mNextBtn;
    View mNormalLine;
    EditText mNumberText;
    View mWrongText;
    private ChargePlan a;
    private String b = "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
    private String[] c = new String[]{"0", "+86", "86", "17951", ""};

    static /* synthetic */ void a(SmsSendActivity smsSendActivity) {
        smsSendActivity.b();
    }

    static /* synthetic */ void a(SmsSendActivity smsSendActivity, boolean bl) {
        smsSendActivity.a(bl);
    }

    static /* synthetic */ boolean a(SmsSendActivity smsSendActivity, String string) {
        if (string == null) {
            return false;
        }
        return Pattern.compile(smsSendActivity.b).matcher(string).matches();
    }

    static /* synthetic */ String[] b(SmsSendActivity smsSendActivity) {
        return smsSendActivity.c;
    }

    static /* synthetic */ ChargePlan c(SmsSendActivity smsSendActivity) {
        return smsSendActivity.a;
    }

    static /* synthetic */ void d(SmsSendActivity smsSendActivity) {
        smsSendActivity.mNormalLine.setVisibility(View.GONE);
        smsSendActivity.mErrorLine.setVisibility(View.VISIBLE);
        smsSendActivity.mWrongText.setVisibility(View.VISIBLE);
    }

    static /* synthetic */ void e(SmsSendActivity smsSendActivity) {
        smsSendActivity.onBackPressed();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        Button button = this.mNextBtn;
        int n = bl ? R.drawable.bg_sms_commit_selector : R.drawable.bg_sms_commit_disable;
        button.setBackgroundResource(n);
        this.mNextBtn.setClickable(bl);
        this.mNextBtn.setEnabled(bl);
        this.mNextBtn.setTextColor(this.getResources().getColor(R.color.white));
    }

    private void b() {
        this.mNormalLine.setVisibility(View.VISIBLE);
        this.mErrorLine.setVisibility(View.GONE);
        this.mWrongText.setVisibility(4);
    }

    @Override
    public void onBackPressed() {
        new h(this).a(R.string.sms_pay_cacenl_title).b(R.string.sms_pay_cacenl_text).a("\u786e\u8ba4", (DialogInterface.OnClickListener) new ar(this)).b("\u53d6\u6d88", null).b();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_sms_send);
        this.b("\u77ed\u4fe1\u5145\u503c");
        this.mNumberText = (EditText) findViewById(R.id.sms_number_text);
        this.mNormalLine = findViewById(R.id.sms_normal_line);
        this.mErrorLine = findViewById(R.id.sms_error_line);
        this.mWrongText = findViewById(R.id.sms_wrong_text);
        this.mNextBtn = (Button) findViewById(R.id.sms_pay_next);
        this.b();
        this.a(false);
        this.a = (ChargePlan) this.getIntent().getSerializableExtra("key_charge_plan_send");
        this.mNumberText.addTextChangedListener(new ap(this));
        this.mNextBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (SmsSendActivity.a(SmsSendActivity.this, SmsSendActivity.this.mNumberText.getText().toString())) {
                    Intent intent = SmsVerifyActivity.a(SmsSendActivity.this, SmsSendActivity.c(SmsSendActivity.this), SmsSendActivity.this.mNumberText.getText().toString());
                    SmsSendActivity.this.startActivity(intent);
                    return;
                }
                SmsSendActivity.d(SmsSendActivity.this);
            }
        });
    }
}
