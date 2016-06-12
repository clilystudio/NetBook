
package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.clilystudio.netbook.ui.SmartImageView;
import uk.me.lewisdeane.ldialogs.h;

public class ReaderMenuFragment$DownLoadDialogFragment extends DialogFragment {

    private SmartImageView a;

    public static ReaderMenuFragment$DownLoadDialogFragment a(String String1, String String2, String String3)
    {
        ReaderMenuFragment$DownLoadDialogFragment DownLoadDialogFragment4 = new ReaderMenuFragment$DownLoadDialogFragment();
        Bundle Bundle5 = new Bundle();

        Bundle5.putString( "name", String1 );
        Bundle5.putString( "size", String2 );
        Bundle5.putString( "link", String3 );
        DownLoadDialogFragment4.setArguments( Bundle5 );
        return DownLoadDialogFragment4;
    }

    static SmartImageView a(ReaderMenuFragment$DownLoadDialogFragment DownLoadDialogFragment1)
    {
        return DownLoadDialogFragment1.a;
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        a = (SmartImageView) getActivity().findViewById( 2131493448 );
    }

    public Dialog onCreateDialog(Bundle Bundle1)
    {
        String String2 = getArguments().getString( "name" );
        String String3 = getArguments().getString( "link" );
        String String4 = getArguments().getString( "size" );
        h h5 = new h( (Context) getActivity() ).a( 2131034371 );

        h5.e = new StringBuilder( "\u662F\u5426\u4E0B\u8F7D" ).append( String2 ).append( "(" ).append( String4 ).append( "\uFF0C\u5EFA\u8BAE\u4F7F\u7528WIFI\u4E0B\u8F7D)\uFF1F" ).toString();
        return (Dialog) h5.a( 2131034371, (DialogInterface$OnClickListener) new by( this, String2, String3 ) ).b( 2131034129, null ).a();
    }
}
