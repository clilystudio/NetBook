package com.clilystudio.app.netbook.ui.post;

import android.os.Bundle;
import android.os.Parcelable;
import android.widget.ListView;
import android.widget.RelativeLayout;

import com.clilystudio.app.netbook.model.Follower;
import com.clilystudio.app.netbook.ui.BaseActivity;

public class FollowerListActivity extends BaseActivity {
    private Follower[] a;
    private ListView b;
    private RelativeLayout c;

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903101);
    }

    protected void onStart() {
        super.onStart();
        Bundle localBundle = getIntent().getExtras();
        if (localBundle.getString("type").equals("TYPE_FOLLOWINGS")) ;
        for (String str = "关注"; ; str = "粉丝") {
            b_initContentView(str);
            this.c = ((RelativeLayout) findViewById(2131493132));
            this.b = ((ListView) findViewById(2131493131));
            this.b.setDivider(getResources().getDrawable(2130838151));
            Parcelable[] arrayOfParcelable = localBundle.getParcelableArray("follows");
            if (arrayOfParcelable == null)
                break;
            this.a = new Follower[arrayOfParcelable.length];
            for (int i = 0; i < arrayOfParcelable.length; i++)
                this.a[i] = ((Follower) arrayOfParcelable[i]);
        }
        this.a = new Follower[0];
        this.b.setAdapter(new bj(this));
        if (this.a.length > 0) {
            this.c.setVisibility(8);
            return;
        }
        this.c.setVisibility(0);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.FollowerListActivity
 * JD-Core Version:    0.6.2
 */