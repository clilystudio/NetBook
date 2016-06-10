.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;-><init>()V

    .line 216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "size"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "link"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 221
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0248

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 228
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x7f050103

    .line 232
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    new-instance v3, Luk/me/lewisdeane/ldialogs/h;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u662f\u5426\u4e0b\u8f7d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\uff0c\u5efa\u8bae\u4f7f\u7528WIFI\u4e0b\u8f7d)\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    iput-object v2, v3, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 236
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/by;

    invoke-direct {v2, p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/by;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v3, v6, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
