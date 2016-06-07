.class public Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 90
    const v0, 0x7f0c021b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/v;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/v;-><init>(Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0c0220

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/w;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/w;-><init>(Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0c0221

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/x;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/x;-><init>(Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
