package com.clilystudio.app.netbook.ui.post;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.ui.BaseActivity;

import java.util.ArrayList;
import java.util.List;

public class AddVoteItemActivity extends BaseActivity {
    private int a = 0;
    private RelativeLayout[] b = new RelativeLayout[7];
    private ImageView[] c = new ImageView[5];
    private TextView[] e = new TextView[7];
    private String[] f = null;
    private String[] g = new String[7];
    private List<String> h = new ArrayList();
    private int i = 0;
    private String j;
    private String k;
    private String l;
    private String m;
    private boolean n;
    private Account o = null;
    private View.OnClickListener p = new S(this);
    private View.OnClickListener q = new T(this);

    public void onBackPressed() {
        Intent localIntent = getIntent();
        localIntent.putExtra("contentArray", this.g);
        setResult(-1, localIntent);
        finish();
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903079);
        a.a();
        a.a(this);
        String str1 = getIntent().getStringExtra("block");
        if ("ramble".equals(str1))
            this.a = 1;
        int[] arrayOfInt3;
        while (true) {
            this.f = getIntent().getStringArrayExtra("lastContentArray");
            this.j = getIntent().getStringExtra("book_post_list_bookId");
            this.k = getIntent().getStringExtra("book_post_list_bookTitle");
            this.l = getIntent().getStringExtra("add_vote_title");
            this.m = getIntent().getStringExtra("add_vote_desc");
            this.n = getIntent().getBooleanExtra("book_post_list_from_reader", false);
            b("编辑投票项");
            int[] arrayOfInt1 = {2131492890, 2131492891, 2131492892, 2131492893, 2131492894, 2131492895, 2131492896};
            int[] arrayOfInt2 = {2131492876, 2131492877, 2131492878, 2131492879, 2131492880, 2131492881, 2131492882};
            arrayOfInt3 = new int[]{2131492871, 2131492872, 2131492873, 2131492874, 2131492875};
            for (int i1 = 0; i1 < 7; i1++) {
                this.b[i1] = ((RelativeLayout) findViewById(arrayOfInt1[i1]));
                this.b[i1].setTag(Integer.valueOf(i1));
                this.b[i1].setOnClickListener(this.p);
                this.e[i1] = ((TextView) findViewById(arrayOfInt2[i1]));
            }
            if ("android-feedback".equals(str1))
                this.a = 2;
            else if ("girl".equals(str1))
                this.a = 3;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            int i7 = i2 + 3;
            this.c[i2] = ((ImageView) findViewById(arrayOfInt3[i2]));
            this.c[i2].setTag(Integer.valueOf(i7));
            this.c[i2].setOnClickListener(this.q);
        }
        View localView1 = findViewById(2131492868);
        View localView2 = findViewById(2131492897);
        localView1.setOnClickListener(new Q(this));
        localView2.setOnClickListener(new R(this));
        if (this.f != null) {
            this.g = this.f;
            for (int i4 = 6; ; i4--)
                if (i4 > 0) {
                    if (!"".equals(this.g[i4]))
                        this.i = (i4 + 1);
                } else {
                    if (this.i < 2)
                        this.i = 2;
                    int i5 = this.i;
                    for (int i6 = 0; i6 < i5; i6++) {
                        this.b[i6].setVisibility(0);
                        String str2 = this.g[i6];
                        this.e[i6].setText(str2);
                    }
                }
        }
        this.i = 2;
        for (int i3 = 0; i3 < 7; i3++)
            this.g[i3] = "";
    }

    public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
        switch (paramMenuItem.getItemId()) {
            default:
                return super.onOptionsItemSelected(paramMenuItem);
            case 16908332:
        }
        onBackPressed();
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.AddVoteItemActivity
 * JD-Core Version:    0.6.2
 */