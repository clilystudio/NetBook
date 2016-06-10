.class final Lcom/ushaqi/zhuishushenqi/ui/user/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/o;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/o;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 216
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/s;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/o;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/o;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const v3, 0x7f05006a

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/s;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/o;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/s;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    return-void
.end method
