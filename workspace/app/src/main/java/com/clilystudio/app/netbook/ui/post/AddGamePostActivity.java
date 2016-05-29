package com.clilystudio.app.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;

import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.ui.BaseActivity;

import cn.sharesdk.framework.ShareSDK;

public class AddGamePostActivity extends BaseActivity {
    private EditText a;

    public static Intent a(Context paramContext, String paramString) {
        return new d_IntentFactory().a_setClass(paramContext, AddGamePostActivity.class).a_putExtra("post_game_id", paramString).a();
    }

    public void onBackPressed() {
        if (!a.Q(this.a.getText().toString())) ;
        for (int i = 1; i != 0; i = 0) {
            h localh = new h(this);
            localh.d = "提示";
            localh.e = "离开将丢失已输入的内容，确定离开？";
            localh.b("留在此页", new r(this));
            localh.a("离开", new s(this));
            localh.a().show();
            return;
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903075);
        a(2131034293, 2131034448, new o(this));
        ShareSDK.initSDK(this);
        this.a = ((EditText) findViewById(2131493067));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.AddGamePostActivity
 * JD-Core Version:    0.6.2
 */