package com.clilystudio.netbook.util;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class DialogUtil$GenderIntroDialog extends DialogFragment {
    public Dialog onCreateDialog(Bundle paramBundle) {
        View localView = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(2130903193, null);
        ((ImageView) localView.findViewById(2131493403)).setOnClickListener(new v(this));
        ((Button) localView.findViewById(2131493408)).setOnClickListener(new w(this));
        ((Button) localView.findViewById(2131493409)).setOnClickListener(new x(this));
        return new AlertDialog.Builder(getActivity()).setView(localView).create();
    }
}

