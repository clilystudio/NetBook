package com.clilystudio.netbook.util;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.*;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class GenderIntroDialog extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        View view = ((LayoutInflater) this.getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.dialog_gender_intro, (ViewGroup)getActivity().getWindow().getDecorView(),false);
        view.findViewById(R.id.imgCancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                BusProvider.getInstance().post(new GenderIntroEvent(0));
            }
        });
        view.findViewById(R.id.btnMale).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                BusProvider.getInstance().post(new GenderIntroEvent(1));
            }
        });
        view.findViewById(R.id.btnFemale).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                BusProvider.getInstance().post(new GenderIntroEvent(2));
            }
        });
        return new AlertDialog.Builder(this.getActivity()).setView(view).create();
    }
}
