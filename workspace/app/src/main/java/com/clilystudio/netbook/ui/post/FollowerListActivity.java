package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.os.Parcelable;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.ui.BaseActivity;

public class FollowerListActivity extends BaseActivity {
    private Follower[] a;
    private ListView b;
    private RelativeLayout c;

    static /* synthetic */ Follower[] a(FollowerListActivity followerListActivity) {
        return followerListActivity.a;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903101);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onStart() {
        super.onStart();
        Bundle bundle = this.getIntent().getExtras();
        String string = bundle.getString("type").equals("TYPE_FOLLOWINGS") ? "\u5173\u6ce8" : "\u7c89\u4e1d";
        this.b(string);
        this.c = (RelativeLayout) this.findViewById(2131493132);
        this.b = (ListView) this.findViewById(2131493131);
        this.b.setDivider(this.getResources().getDrawable(2130838151));
        Parcelable[] arrparcelable = bundle.getParcelableArray("follows");
        if (arrparcelable != null) {
            this.a = new Follower[arrparcelable.length];
            for (int i = 0; i < arrparcelable.length; ++i) {
                this.a[i] = (Follower) arrparcelable[i];
            }
        } else {
            this.a = new Follower[0];
        }
        this.b.setAdapter((ListAdapter) ((Object) new bj(this)));
        if (this.a.length > 0) {
            this.c.setVisibility(View.GONE);
            return;
        }
        this.c.setVisibility(View.VISIBLE);
    }
}
