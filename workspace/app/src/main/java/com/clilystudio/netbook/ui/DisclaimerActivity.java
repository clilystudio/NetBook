package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.widget.TextView;

import com.clilystudio.netbook.R;

public class DisclaimerActivity extends BaseActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_disclaimer);
        this.b(R.string.disclaimer_title);
        String string = this.getString(R.string.disclaimer);
        ((TextView) this.findViewById(R.id.disclaimer)).setText(string);
    }
}
