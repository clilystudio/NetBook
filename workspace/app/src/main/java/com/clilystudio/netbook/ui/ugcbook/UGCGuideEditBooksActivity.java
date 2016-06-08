package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.event.D;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.squareup.a.b;

import java.util.HashMap;
import java.util.Map;

import cn.sharesdk.framework.ShareSDK;

public class UGCGuideEditBooksActivity extends BaseActivity
        implements View.OnClickListener {
    Map<String, String> a = new HashMap();
    private ListView b;
    private View c;
    private Q e;
    private String f;
    private Author g;
    private boolean h;

    private void b() {
        UGCNewCollection localUGCNewCollection = e();
        this.e.a(localUGCNewCollection.getBooks());
        if ((localUGCNewCollection.getBooks() != null) && (localUGCNewCollection.getBooks().size() == 0)) {
            this.c.setVisibility(0);
            return;
        }
        this.c.setVisibility(8);
    }

    @l
    public void onAddShelfBooks(D paramD) {
        N localN = new N(this, this);
        String[][] arrayOfString;=new String[1][];
        arrayOfString;[0]=paramD.a();
        localN.b(arrayOfString;);
    }

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131494010:
                startActivity(new Intent(this, UGCGuideAddBookActivity.class));
                return;
            case 2131494009:
        }
        startActivity(new Intent(this, UGCGuideSelectBookActivity.class));
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903401);
        i.a().a(this);
        Bundle localBundle = getIntent().getExtras();
        String str1;
        String str2;
        if ((localBundle != null) && (localBundle.containsKey("name")) && (localBundle.containsKey("desc"))) {
            String str3 = localBundle.getString("name");
            str1 = localBundle.getString("desc");
            str2 = str3;
            this.f = localBundle.getString("ugc_id");
            this.g = ((Author) localBundle.getSerializable("my_author"));
            this.h = getIntent().getBooleanExtra("is_draft", false);
            ShareSDK.initSDK(this);
            if ((!this.h) && (this.f != null) && (!this.f.equals("")))
                break label340;
            a("编辑书单", 2131034475, 2131034448, new H(this));
        }
        while (true) {
            UGCNewCollection localUGCNewCollection = e();
            localUGCNewCollection.setDesc(str1);
            localUGCNewCollection.setTitle(str2);
            this.b = ((ListView) findViewById(2131492924));
            this.c = findViewById(2131494006);
            View localView = LayoutInflater.from(this).inflate(2130903402, this.b, false);
            TextView localTextView1 = (TextView) localView.findViewById(2131494007);
            TextView localTextView2 = (TextView) localView.findViewById(2131494008);
            localTextView1.setText(str2);
            localTextView2.setText(str1);
            this.b.addHeaderView(localView, null, false);
            localView.findViewById(2131494010).setOnClickListener(this);
            localView.findViewById(2131494009).setOnClickListener(this);
            this.e = new Q(this, getLayoutInflater(), 2130903316);
            this.b.setAdapter(this.e);
            return;
            str1 = "default_desc";
            str2 = "default_name";
            break;
            label340:
            a("书单详情", 2131034448, new I(this));
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onResume() {
        super.onResume();
        b();
    }
}

