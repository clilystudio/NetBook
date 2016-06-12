
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.netbook.ui.feed.FeedListActivity;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.m;
import java.io.File;

final class p implements AdapterView$OnItemClickListener {

    p(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;
// Error: Internal #201: 
// The following method may not be correct.

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
    }
}
