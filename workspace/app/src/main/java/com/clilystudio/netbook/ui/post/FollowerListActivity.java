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

    static Follower[] a(FollowerListActivity FollowerListActivity1) {
        return FollowerListActivity1.a;
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903101);
    }

    protected void onStart() {
        Bundle Bundle1;
        String String2;
        Parcelable[] Parcelable_1darray3;

        super.onStart();
        Bundle1 = getIntent().getExtras();
        if (Bundle1.getString("type").equals("TYPE_FOLLOWINGS"))
            String2 = "\u5173\u6CE8";
        else
            String2 = "\u7C89\u4E1D";
        b(String2);
        c = (RelativeLayout) findViewById(2131493132);
        b = (ListView) findViewById(2131493131);
        b.setDivider(getResources().getDrawable(2130838151));
        Parcelable_1darray3 = Bundle1.getParcelableArray("follows");
        if (Parcelable_1darray3 != null) {
            int int4;

            a = new Follower[Parcelable_1darray3.length];
            for (int4 = 0; int4 < Parcelable_1darray3.length; ++int4)
                a[int4] = (Follower) Parcelable_1darray3[int4];
        } else
            a = new Follower[0];
        b.setAdapter((ListAdapter) new bj(this));
        if (a.length > 0)
            c.setVisibility(8);
        else
            c.setVisibility(0);
    }
}
