
package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.clilystudio.netbook.ui.SimpleTabActivity;

public class UserTopicActivity extends SimpleTabActivity {

    public final String[] h()
    {
        return new String[] { "\u53D1\u5E03\u7684\u8BDD\u9898", "\u6536\u85CF\u7684\u8BDD\u9898" };
    }

    public final Fragment[] i()
    {
        Object[] Object_1darray1 = new Fragment[2];

        Object_1darray1[0] = new MyTopicFragment();
        Object_1darray1[1] = new MyFavTopicFragment();
        return (Fragment[]) Object_1darray1;
    }

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        b( "\u8BDD\u9898" );
    }
}
