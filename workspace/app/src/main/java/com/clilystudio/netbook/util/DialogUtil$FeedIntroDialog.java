package com.clilystudio.netbook.util;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

public class DialogUtil$FeedIntroDialog extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        View view = ((LayoutInflater) this.getActivity().getSystemService("layout_inflater")).inflate(2130903190, null);
        ((Button) view.findViewById(2131493393)).setOnClickListener((View.OnClickListener) ((Object) new u(this)));
        return new AlertDialog.Builder(this.getActivity()).setView(view).create();
    }
}
