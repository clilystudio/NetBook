package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.widget.EditText;

import com.clilystudio.netbook.ui.BaseActivity;

import cn.sharesdk.framework.ShareSDK;

public class AddGirlTopicActivity extends BaseActivity {
    private EditText a;
    private EditText b;

    public void onBackPressed() {
        int i = 1;
        String str1 = this.a.getText().toString();
        String str2 = this.b.getText().toString();
        if (!a.Q(str1)) ;
        while (i != 0) {
            h localh = new h(this);
            localh.d = "提示";
            localh.e = "离开将丢失已输入的内容，确定离开？";
            localh.b("留在此页", new x(this));
            localh.a("离开", new y(this));
            localh.a().show();
            return;
            if (!a.Q(str2))
                continue;
            i = 0;
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903076);
        a(2131034291, 2131034448, new u(this));
        ShareSDK.initSDK(this);
        this.a = ((EditText) findViewById(2131493068));
        this.b = ((EditText) findViewById(2131493069));
    }
}
