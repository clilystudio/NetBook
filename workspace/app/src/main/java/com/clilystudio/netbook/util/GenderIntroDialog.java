package com.clilystudio.netbook.util;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.*;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class GenderIntroDialog extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        View view = ((LayoutInflater) this.getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.dialog_gender_intro, null);
        ((ImageView) view.findViewById(R.id.imgCancel)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                BusProvider.getInstance().post(new GenderIntroEvent(0));
                MiStatInterface.recordCountEvent("book_recommend_gender_click", "cancel");
            }
        });
        ((Button) view.findViewById(R.id.btnMale)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                BusProvider.getInstance().post(new GenderIntroEvent(1));
                MiStatInterface.recordCountEvent("book_recommend_gender_click", "male");
            }
        });
        ((Button) view.findViewById(R.id.btnFemale)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                BusProvider.getInstance().post(new GenderIntroEvent(2));
                MiStatInterface.recordCountEvent("book_recommend_gender_click", "female");
            }
        });
        return new AlertDialog.Builder(this.getActivity()).setView(view).create();
    }
}
