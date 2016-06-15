package com.clilystudio.netbook.util;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class GenderIntroDialog extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        View view = ((LayoutInflater) this.getActivity().getSystemService("layout_inflater")).inflate(2130903193, null);
        ((ImageView) view.findViewById(2131493403)).setOnClickListener((View.OnClickListener) ((Object) new v(this)));
        ((Button) view.findViewById(2131493408)).setOnClickListener((View.OnClickListener) ((Object) new w(this)));
        ((Button) view.findViewById(2131493409)).setOnClickListener((View.OnClickListener) ((Object) new x(this)));
        return new AlertDialog.Builder(this.getActivity()).setView(view).create();
    }
}
