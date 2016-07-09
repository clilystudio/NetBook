package com.clilystudio.netbook.util;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.clilystudio.netbook.R;

public class FeedIntroDialog extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        View view = ((LayoutInflater) this.getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.dialog_feed_intro, (ViewGroup)getActivity().getWindow().getDecorView(),false);
        view.findViewById(R.id.dialog_feed_intro_btn).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
            }
        });
        return new AlertDialog.Builder(this.getActivity()).setView(view).create();
    }
}
