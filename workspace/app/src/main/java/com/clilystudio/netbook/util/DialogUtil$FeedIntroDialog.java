
package com.clilystudio.netbook.util;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;

public class DialogUtil$FeedIntroDialog extends DialogFragment {

    public Dialog onCreateDialog(Bundle Bundle1)
    {
        View View2 = ((LayoutInflater) getActivity().getSystemService( "layout_inflater" )).inflate( 2130903190, null );

        ((Button) View2.findViewById( 2131493393 )).setOnClickListener( (View$OnClickListener) new u( this ) );
        return (Dialog) new AlertDialog$Builder( (Context) getActivity() ).setView( View2 ).create();
    }
}
