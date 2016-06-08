package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

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
    private String[] c = {"0", "+86", "86", "17951", ""};

    private void a(boolean paramBoolean) {
        Button localButton = this.mNextBtn;
        if (paramBoolean) ;
        for (int i = 2130837693; ; i = 2130837690) {
            localButton.setBackgroundResource(i);
            this.mNextBtn.setClickable(paramBoolean);
            this.mNextBtn.setEnabled(paramBoolean);
            this.mNextBtn.setTextColor(getResources().getColor(2131427548));
            return;
        }
    }

    private void b() {
        this.mNormalLine.setVisibility(0);
        this.mErrorLine.setVisibility(8);
        this.mWrongText.setVisibility(4);
    }

    public void onBackPressed() {
        new h(this).a(2131034511).b(2131034510).a("确认", new ar(this)).b("取消", null).b();
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(R.layout.activity_sms_send);
        b("短信充值");
        mErrorLine = findViewById(R.id.sms_error_line);
        mNextBtn = (Button) findViewById(R.id.sms_pay_next);
        mNormalLine = findViewById(R.id.sms_normal_line);
        mNumberText = (EditText) findViewById(R.id.sms_number_text);
        mWrongText = findViewById(R.id.sms_wrong_text);
        b();
        a(false);
        this.a = ((ChargePlan) getIntent().getSerializableExtra("key_charge_plan_send"));
        this.mNumberText.addTextChangedListener(new ap(this));
        this.mNextBtn.setOnClickListener(new aq(this));
    }
}

