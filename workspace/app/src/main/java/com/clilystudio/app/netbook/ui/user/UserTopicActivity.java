package com.clilystudio.app.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.app.netbook.ui.SimpleTabActivity;

public class UserTopicActivity extends SimpleTabActivity {
    public final String[] h() {
        return new String[]{"发布的话题", "收藏的话题"};
    }

    public final Fragment[] i() {
        Fragment[] arrayOfFragment = new Fragment[2];
        arrayOfFragment[0] = new MyTopicFragment();
        arrayOfFragment[1] = new MyFavTopicFragment();
        return arrayOfFragment;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        b_initContentView("话题");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.UserTopicActivity
 * JD-Core Version:    0.6.2
 */