package com.clilystudio.netbook.util;

import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.ImageView;

public class DialogUtil$GenderIntroDialog extends DialogFragment {

    public Dialog onCreateDialog(Bundle Bundle1) {
        View View2 = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(2130903193, null);

        ((ImageView) View2.findViewById(2131493403)).setOnClickListener((View$OnClickListener) new v(this));
        ((Button) View2.findViewById(2131493408)).setOnClickListener((View$OnClickListener) new w(this));
        ((Button) View2.findViewById(2131493409)).setOnClickListener((View$OnClickListener) new x(this));
        return (Dialog) new AlertDialog$Builder((Context) getActivity()).setView(View2).create();
    }
}
