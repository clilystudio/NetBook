
package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.clilystudio.netbook.ui.SimpleTabActivity;
import com.clilystudio.netbook.ui.ugcbook.DraftUGCListFragment;
import com.clilystudio.netbook.ui.ugcbook.FavUGCListFragment;
import com.clilystudio.netbook.ui.ugcbook.MyUGCListFragment;

public class UserUGCActivity extends SimpleTabActivity {

    protected final void b()
    {
        b = 3;
        c = new String[] { "fragmentTag0", "fragmentTag1", "fragmentTag2" };
    }

    public final String[] h()
    {
        return new String[] { "\u5DF2\u53D1\u5E03", "\u8349\u7A3F\u7BB1", "\u6536\u85CF\u5939" };
    }

    public final Fragment[] i()
    {
        Object[] Object_1darray1 = new Fragment[3];

        Object_1darray1[0] = new MyUGCListFragment();
        Object_1darray1[1] = new DraftUGCListFragment();
        Object_1darray1[2] = new FavUGCListFragment();
        return (Fragment[]) Object_1darray1;
    }

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        b( "\u6211\u7684\u4E66\u5355" );
    }
}
