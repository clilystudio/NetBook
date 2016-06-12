
package com.clilystudio.netbook.ui;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import butterknife.ButterKnife;

public class RelateUgcFragment extends Fragment {

    LinearLayout mRelateUgcRoot;
    LinearLayout mUgcContainer;

    public static RelateUgcFragment a(String String1)
    {
        RelateUgcFragment RelateUgcFragment2 = new RelateUgcFragment();
        Bundle Bundle3 = new Bundle();

        Bundle3.putString( "book_id", String1 );
        RelateUgcFragment2.setArguments( Bundle3 );
        return RelateUgcFragment2;
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        return LayoutInflater1.inflate( 2130903218, ViewGroup2, false );
    }

    public void onViewCreated(View View1, Bundle Bundle2)
    {
        RelateUgcFragment$GetUgcsTask GetUgcsTask3;
        String[] String_1darray4;

        super.onViewCreated( View1, Bundle2 );
        ButterKnife.inject( this, getView() );
        GetUgcsTask3 = new RelateUgcFragment$GetUgcsTask( this );
        String_1darray4 = new String[1];
        String_1darray4[0] = getArguments().getString( "book_id" );
        GetUgcsTask3.b( String_1darray4 );
    }
}
