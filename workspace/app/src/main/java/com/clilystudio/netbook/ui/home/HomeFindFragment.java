
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.clilystudio.netbook.ui.AdWebViewActivity;
import com.clilystudio.netbook.ui.AudiobookCategoryActivity;
import com.clilystudio.netbook.ui.BookCategoryActivity;
import com.clilystudio.netbook.ui.BookRankListActivity;
import com.clilystudio.netbook.ui.MhdListActivity;
import com.clilystudio.netbook.ui.ugcbook.UGCMainActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.widget.HomeFindGameItem;
import com.clilystudio.netbook.widget.HomeFindItem;
import com.clilystudio.netbook.widget.HomeFindLuckyGameItem;
import com.clilystudio.netbook.widget.HomeFindSecretItem;

public class HomeFindFragment extends HomeFragment {

    private ViewGroup a;
    private HomeFindSecretItem b;
    private HomeFindGameItem c;
    private HomeFindLuckyGameItem d;

    public static HomeFindFragment a(Bundle Bundle1)
    {
        HomeFindFragment HomeFindFragment2 = new HomeFindFragment();

        HomeFindFragment2.setArguments( Bundle1 );
        return HomeFindFragment2;
    }

    public final String a()
    {
        return "home_find";
    }

    public final void a(boolean boolean1)
    {
        if( boolean1 )
        {
            a.removeView( (View) d );
            if( c == null )
                c = new HomeFindGameItem( (Activity) getActivity() );
            a.addView( (View) c );
            a.addView( (View) d );
        }
        else
            a.removeView( (View) c );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
    }

    public void onResume()
    {
        super.onResume();
        b.a();
        if( c != null )
            c.a();
        d.a();
    }
}
